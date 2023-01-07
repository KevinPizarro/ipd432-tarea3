`timescale 1ns/1ps
module device import master_state_enum::*; #(
    parameter CLK_FREQUENCY = 100_000_000,
	parameter BAUD_RATE = 115_200,     // Use 115200 br
	parameter WIDTH = 1024,         // Vector width
	parameter DEEPTH = 8               // Vector deepth = UART rate
)(
    input logic CLK100MHZ, CPU_RESETN,
    input logic UART_TXD_IN,
    output logic UART_RXD_OUT,
    output logic [7:0] SEG, AN
);
    enum_state state, nx_state;
    logic job_ok, en_data, tx_inc;
   
/*********************************** UART MAGNEMENT *************************************/
    logic [7:0] rx_data, tx_data;
    logic rx_ready, tx_start, tx_busy;
    
    uart_basic #(
        .CLK_FREQUENCY(CLK_FREQUENCY),
        .BAUD_RATE(BAUD_RATE)
    ) uart_logic(
        .clk(CLK100MHZ),.reset(~CPU_RESETN),
        .rx(UART_TXD_IN),.tx(UART_RXD_OUT),
        .rx_data(rx_data),.tx_data(tx_data),
        .rx_ready(rx_ready),.tx_start(tx_start),
        .tx_busy(tx_busy)
    );
/***************************************************************************************/    
    
/********************************* MEMORY MAGNEMENT ************************************/
//  ADDR ITERATION    
    localparam DIRW = $clog2(WIDTH);
    logic [DIRW-1:0] addr;
    logic addr_inc;
    counter_with_inc #(DIRW) master_count(
        .clk(CLK100MHZ),.rst(~CPU_RESETN || job_ok),
        .inc(addr_inc),.count(addr)
    );
    
//---------------------------------------- DATA IN -------------------------------------
    logic [WIDTH-1:0] write, writeA, writeB, writeOut; 
    logic [WIDTH-1:0] [DEEPTH-1:0] memA, memB, memOut;
    logic [WIDTH-1:0] [DEEPTH-1:0] dataIn, dataOut;
    
    byte_to_mem  #(WIDTH, DEEPTH) paralellizer(// ------------ check
        .clk(CLK100MHZ),.rst(~CPU_RESETN),
        .addr_inc(addr_inc),.data(rx_data),.addr(addr),
        .save(write),.parallel(dataIn)
    );
    
    DRAM #(WIDTH, DEEPTH) mem_in_A(// ------------ check
        .clk(CLK100MHZ),.rst(~CPU_RESETN),
        .save_mem(writeA),.data_in(dataIn),.data_out(memA)
    );
    
    DRAM #(WIDTH, DEEPTH) mem_in_B(// ------------ check
        .clk(CLK100MHZ),.rst(~CPU_RESETN),
        .save_mem(writeB),.data_in(dataIn),.data_out(memB)
    );
    
//----------------------------------------  DATA OUT -----------------------------------
    DRAM #(WIDTH, DEEPTH) mem_out(
        .clk(CLK100MHZ),.rst(~CPU_RESETN),
        .save_mem(writeOut),.data_in(dataOut),.data_out(memOut)
    );
    
    mem_to_byte #(WIDTH, DEEPTH) serializer(    // ------------ check
        .addr(addr),.parallel(memOut),
        .data(tx_data)
    );
    
    save_and_transmit #(WIDTH,DEEPTH) mem_out_control(
        .clk(CLK100MHZ),.rst(~CPU_RESETN),
        .main_state(state),.tx_busy(tx_busy),.addr_inc(tx_inc),
        .save_mem(writeOut),.tx_start(tx_start)
    );
/***************************************************************************************/

/************************************** TO 7SEG ****************************************/     
    logic [19:0] numMan;
    info_to_7seg SevenSeg_logic(
        .clk(CLK100MHZ),.rst(~CPU_RESETN),
        .state(state),.man(numMan),
        .SEG(SEG),.AN(AN)
    );
/***************************************************************************************/
    
/******************************** SECONDARY FSM ****************************************/    
    logic [WIDTH-1:0] [DEEPTH-1:0] vectA, vectB, vectSum, vectAvg, vectMan;
    
    operation #(WIDTH, DEEPTH) math_operations(
        .clk(CLK100MHZ),.en_data(en_data),
        .memA(memA),.memB(memB),.numMan(numMan),
        .vectA(vectA),.vectB(vectB),
        .vectSum(vectSum),.vectAvg(vectAvg),.vectMan(vectMan)
    );
/***************************************************************************************/
   
/************************************ PRIMARY FSM **************************************/    
// SYNC TRANS
    always_ff @(posedge CLK100MHZ)
        if (~CPU_RESETN)    state <= Standby;
        else                state <= nx_state;
        
// COMB TRANS
    always_comb
    if (state == Standby && rx_ready) 
        case (rx_data)
            'd1:        nx_state = WriteVecA;
            'd2:        nx_state = WriteVecB;
            'd3:        nx_state = ReadVecA;
            'd4:        nx_state = ReadVecB;                                                        
            'd5:        nx_state = SumVec;
            'd6:        nx_state = AvgVec;
            'd7:        nx_state = ManDis;
            'd8:        nx_state = EucDis;
            default:    nx_state = Standby;
        endcase 
    else if (job_ok)
        nx_state = Standby;
    else
        nx_state = state;
     
// COMB OUT
    always_comb begin
        job_ok = 0; 
        addr_inc = 0;
        dataOut = 0;
        en_data = 0;
        writeA = 0; writeB = 0;
        case (state)
        /*  Standby: -equal to default case- */
            WriteVecA:  begin
                            writeA = write;
                            addr_inc = rx_ready;
                            job_ok = (addr == WIDTH-1 && addr_inc) ? 1 : 0 ;
                        end
            WriteVecB:  begin
                            writeB = write;
                            addr_inc = rx_ready;
                            job_ok = (addr == WIDTH-1 && addr_inc) ? 1 : 0 ;
                        end     
            ReadVecA:   begin
                            dataOut = vectA;
                            en_data = 1;
                            addr_inc = tx_inc;
                            job_ok = (addr == WIDTH-1 && addr_inc) ? 1 : 0 ;
                        end   
            ReadVecB:   begin
                            dataOut = vectB;
                            en_data = 1;
                            addr_inc = tx_inc;
                            job_ok = (addr == WIDTH-1 && addr_inc) ? 1 : 0 ;
                        end   
            SumVec:     begin
                            dataOut = vectSum;
                            en_data = 1;
                            addr_inc = tx_inc;
                            job_ok = (addr == WIDTH-1 && addr_inc) ? 1 : 0 ;
                        end 
            AvgVec:     begin
                            dataOut = vectAvg;
                            en_data = 1;
                            addr_inc = tx_inc;
                            job_ok = (addr == WIDTH-1 && addr_inc) ? 1 : 0 ;
                        end 
            ManDis:     begin
                            dataOut = vectMan;
                            en_data = 1;
                            addr_inc = tx_inc;
                            job_ok = (addr == 2 && addr_inc) ? 1 : 0 ;
                        end 
            EucDis:     begin
                            job_ok = 1;
                        end 
        endcase  
    end
/***************************************************************************************/
endmodule