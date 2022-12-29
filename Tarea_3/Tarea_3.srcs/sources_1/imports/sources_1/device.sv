module device import master_state_enum::*; #(
    parameter CLK_FREQUENCY = 100_000_000,
	parameter BAUD_RATE = 115_200,             // Use 115200 br
	parameter WIDTH = 4,                       // Vector width
	parameter DELAY = 3
)(
    input logic CLK100MHZ, CPU_RESETN,
    input logic UART_TXD_IN,
    output logic UART_RXD_OUT,
    output logic [7:0] SEG, AN
);

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
    
//  DATA IN
    logic [WIDTH-1:0] write, writeA, writeB; // one hot counter
    logic [WIDTH-1:0] [7:0] parallel_in;
    
    logic [WIDTH-1:0] [7:0] vectA, vectB;
    logic en_wri_A, en_read_A, en_wri_B, en_read_B;
    
    byte_to_mem  #(WIDTH) parallelizer(
        .clk(CLK100MHZ),.rst(~CPU_RESETN),
        .addr_inc(addr_inc),.data(rx_data),.addr(addr),
        .save(write),.parallel(parallel_in)
    );
    
    DRAM #(WIDTH) mem_in_A(
        .clk(CLK100MHZ),.rst(~CPU_RESETN),
        .save_mem(writeA),.data_in(parallel_in),.data_out(vectA)
    );
    
    DRAM #(WIDTH) mem_in_B(
        .clk(CLK100MHZ),.rst(~CPU_RESETN),
        .save_mem(writeB),.data_in(parallel_in),.data_out(vectB)
    );
    
//  DATA OUT
    logic [WIDTH-1:0][7:0] Res, parallel_out;
    
    DRAM #(WIDTH) mem_out_res(
        .clk(CLK100MHZ),.rst(~CPU_RESETN),
        .save_mem(),.data_in(),.data_out()
    );
    
    //    logic [7:0] vectA_byte, vectB_byte;

    mem_to_byte #(WIDTH) serializer(
        .addr(addr),.parallel(parallel_out),
        .data(tx_data)    
    );
    
/***************************************************************************************/

/************************************** TO 7SEG ****************************************/     
//    logic [19:0] euc_result, man_result;
//    info_to_7seg screen(
//        .clk(CLK100MHZ),.rst(~CPU_RESETN),
//        .state(state),.euc(euc_result),.man(man_result),
//        .SEG(SEG),.AN(AN)
//    );
/***************************************************************************************/
    
/******************************** SECONDARY FSM ****************************************/    
//    logic readA_start, readB_start, sum_start;
//    logic readA_ok, readB_ok;
//    logic man_ok, euc_ok;
//    logic man_tx, euc_tx;
//    logic man_inc, euc_inc;
//    logic [7:0] sum_data, avg_data, man_data, euc_data;
    
//    SumVecOperation Sum_Vect_inst(
//        .A(vectA),.B(vectB),
//        .tx_data(sum_data)
//    );
    
//    AvgVecOperation Avg_Vect_inst(
//        .A(vectA),.B(vectB),
//        .tx_data(avg_data)
//    );

//    ManDisOperation #(WIDTH,d) Man_Dist_inst(
//        .clk(CLK100MHZ),.rst(~CPU_RESETN),.en(state == ManDis),
//        .tx_busy(tx_busy),.tx_data(man_data),.tx_start(man_tx),
//        .addr(addr),.A(vectA),.B(vectB),
//        .addr_inc(man_inc),.job_ok(man_ok),
//        .result(man_result)
//    );
    
//    EucDisOperation #(WIDTH,d) Euc_Dist_inst(
//        .clk(CLK100MHZ),.rst(~CPU_RESETN),.en(state == EucDis),
//        .tx_busy(tx_busy),.tx_data(euc_data),.tx_start(euc_tx),
//        .addr(addr),.A(vectA),.B(vectB),
//        .addr_inc(euc_inc),.job_ok(euc_ok),
//        .result(euc_result)
//    );    
/***************************************************************************************/
   
/************************************ PRIMARY FSM **************************************/    
    logic job_ok;
    
    main_fsm #(WIDTH) main(.*);

/***************************************************************************************/
endmodule