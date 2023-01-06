`timescale 1ns/1ps
module device import master_state_enum::*; #(
    parameter CLK_FREQUENCY = 100_000_000,
	parameter BAUD_RATE = 115_200,     // Use 115200 br
	parameter WIDTH = 4,            // Vector width
	parameter DEEPTH = 8               // Vector deepth = UART rate
)(
    input logic CLK100MHZ, CPU_RESETN,
    input logic UART_TXD_IN,
    output logic UART_RXD_OUT,
    output logic [7:0] SEG, AN
);

    enum_state state, nx_state;
    logic job_ok, tx_init, tx_inc;

/*********************************** CLOCK MAGNEMENT *************************************/
    logic CLKLOG;
    clk_wiz_0 clock_magnement(
//        .CLK100MHZ(CLK100MHZ),      // output CLK_MAIN
        .CLKLOG(CLKLOG),    // output CLK_LOGIC
        .reset(~CPU_RESETN),    // input reset
        .CLK100MHZ(CLK100MHZ)
    );
/***************************************************************************************/    
    
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
    
//---------------------------------------- DATA IN ---------------------------------------
    logic [WIDTH-1:0] write, writeA, writeB, writeOut; 
    logic [WIDTH-1:0] [DEEPTH-1:0] memA, memB, memOut;
    logic [WIDTH-1:0] [DEEPTH-1:0] dataIn, dataOut;
    
    byte_to_mem  #(WIDTH, DEEPTH) parallelizer(// ------------ check
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
    
//----------------------------------------  DATA OUT -------------------------------------    
    DRAM #(WIDTH, DEEPTH) mem_out(
        .clk(CLKLOG),.rst(~CPU_RESETN),
        .save_mem(writeOut),.data_in(dataOut),.data_out(memOut)
    );
    
    mem_to_byte #(WIDTH, DEEPTH) serializer(    // ------------ check
        .addr(addr),.parallel(memOut),
        .data(tx_data)
    );
    
    save_and_transmit #(WIDTH,DEEPTH) mem_tx_control(
        .clk_main(CLK100MHZ),.clk_logic(CLKLOG),.rst(~CPU_RESETN),
        .en(tx_init),.tx_busy(tx_busy),.addr_inc(tx_inc),
        .save_mem(writeOut),.tx_start(tx_start)
    );
/***************************************************************************************/

/************************************** TO 7SEG ****************************************/     
    logic [19:0] numMan;
    info_to_7seg screen(
        .clk(CLK100MHZ),.rst(~CPU_RESETN),
        .state(state),.euc(0),.man(numMan),
        .SEG(SEG),.AN(AN)
    );
/***************************************************************************************/
    
/******************************** SECONDARY FSM ****************************************/    
/* 
    logic readA_start, readB_start, sum_start;
    logic readA_ok, readB_ok;
    logic man_ok, euc_ok;
    logic man_tx, euc_tx;
    logic man_inc, euc_inc;
    logic [WIDTH-1:0][8:0] sum_data, avg_data;
//     man_data, euc_data;
   
    ManDisOperation #(WIDTH) Man_Dist_inst(
        .clk(CLK100MHZ),.rst(~CPU_RESETN),.en(state == ManDis),
        .tx_busy(tx_busy),.tx_data(man_data),.tx_start(man_tx),
        .addr(addr),.A(memA),.B(memB),
        .addr_inc(man_inc),.job_ok(man_ok),
        .result(man_result)
    );
    
*/
    
    logic [WIDTH-1:0] [DEEPTH-1:0] vectSum, vectAvg, vectMan;
    logic [WIDTH-1:0] [DEEPTH:0] comp_adder;
    
    n_bit_multiadder #(WIDTH, DEEPTH) adder(        // modulo 
        .en((state == SumVec)||(state == AvgVec)),
        .comp_adder(comp_adder),
        .A(memA),.B(memB)
    );
    
    SumVecOperation #(WIDTH, DEEPTH) Sum_Vect_inst(
        .comp_adder(comp_adder),
        .sum(vectSum)
    );
    
    AvgVecOperation #(WIDTH, DEEPTH) Avg_Vect_inst(
        .comp_adder(comp_adder),
        .avg(vectAvg)
    );
    
    ManDisOperation #(WIDTH, DEEPTH) Man_Dist_inst(
        .en(state == ManDis),
        .A(memA),.B(memB),
        .vectOut(vectMan),
        .result(numMan)
    );
/***************************************************************************************/
   
/************************************ PRIMARY FSM **************************************/    
        
//    main_fsm #(WIDTH) main(.*);

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
        tx_init = 0;
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
                            dataOut = memA;
                            tx_init = 1;
                            addr_inc = tx_inc;
                            job_ok = (addr == WIDTH-1 && addr_inc) ? 1 : 0 ;
                        end   
            ReadVecB:   begin
                            dataOut = memB;
                            tx_init = 1;
                            addr_inc = tx_inc;
                            job_ok = (addr == WIDTH-1 && addr_inc) ? 1 : 0 ;
                        end   
            SumVec:     begin
                            dataOut = vectSum;
                            tx_init = 1;
                            addr_inc = tx_inc;
                            job_ok = (addr == WIDTH-1 && addr_inc) ? 1 : 0 ;
                        end 
            AvgVec:     begin
                            dataOut = vectAvg;
                            tx_init = 1;
                            addr_inc = tx_inc;
                            job_ok = (addr == WIDTH-1 && addr_inc) ? 1 : 0 ;
                        end 
            ManDis:     begin
                            dataOut = numMan;
                            tx_init = 1;
                            addr_inc = tx_inc;
                            job_ok = (addr == 2 && addr_inc) ? 1 : 0 ;
//                            dataOut = vectAvg;      //
//                            writeOut = save_avg;    //
                            
//                            tx_init = tx_avg;     //
//                            addr_inc = tx_inc;
//                            job_ok = (addr == 3 && addr_inc) ? 1 : 0 ;
//          job_ok = 1;
                        end 
            EucDis:     begin
//                            nx_addr_inc = euc_tx;
//                            tx_data = euc_data;
//                            addr_inc = euc_inc;
//                            job_ok = euc_ok;
                            job_ok = 1;
                        end 
        endcase  
    end
    


/***************************************************************************************/
endmodule