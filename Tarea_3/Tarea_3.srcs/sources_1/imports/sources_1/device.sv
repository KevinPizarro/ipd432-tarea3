module device import master_state_enum::*; #(
    parameter CLK_FREQUENCY = 100_000_000,
	parameter BAUD_RATE = 115_200,             // Use 115200 br
	parameter N = 4,                        // Vector len
	parameter D = 3
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
    localparam DIRW = $clog2(N);
    logic [DIRW-1:0] addr;
    logic addr_inc;
    counter_with_inc #(DIRW) master_count(
        .clk(CLK100MHZ),.rst(~CPU_RESETN || job_ok),
        .inc(addr_inc),.count(addr)
    );
    
//  MEMORY IN
    logic [N-1:0] write, writeA, writeB; // one hot counter
    logic [N-1:0] [7:0] paralell;
    
    logic [N-1:0] [7:0] vectA, vectB;
    logic en_wri_A, en_read_A, en_wri_B, en_read_B;
    
    byte_to_mem  #(N) paralellizer(
        .clk(CLK100MHZ),.rst(~CPU_RESETN),
        .addr_inc(addr_inc),.data(rx_data),.addr(addr),
        .save(write),.paralell(paralell)
    );
    
    DRAM #(N) mem_in_A(
        .clk(CLK100MHZ),.rst(~CPU_RESETN),
        .save_mem(writeA),.data_in(paralell),.data_out(vectA)
    );
    
    DRAM #(N) mem_in_B(
        .clk(CLK100MHZ),.rst(~CPU_RESETN),
        .save_mem(writeB),.data_in(paralell),.data_out(vectB)
    );
    
//  MEMORY OUT   
//    DRAM #(N) mem_out(
//        .clk(CLK100MHZ),.rst(~CPU_RESETN),
//        .save_mem(save_mem),.data_in(rx_data),.data_out(vectA)
//    );
    
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

//    ManDisOperation #(N,d) Man_Dist_inst(
//        .clk(CLK100MHZ),.rst(~CPU_RESETN),.en(state == ManDis),
//        .tx_busy(tx_busy),.tx_data(man_data),.tx_start(man_tx),
//        .addr(addr),.A(vectA),.B(vectB),
//        .addr_inc(man_inc),.job_ok(man_ok),
//        .result(man_result)
//    );
    
//    EucDisOperation #(N,d) Euc_Dist_inst(
//        .clk(CLK100MHZ),.rst(~CPU_RESETN),.en(state == EucDis),
//        .tx_busy(tx_busy),.tx_data(euc_data),.tx_start(euc_tx),
//        .addr(addr),.A(vectA),.B(vectB),
//        .addr_inc(euc_inc),.job_ok(euc_ok),
//        .result(euc_result)
//    );    
/***************************************************************************************/
   
/************************************ PRIMARY FSM **************************************/    
    logic job_ok;
    
    main_fsm #(N) main(.*);

/***************************************************************************************/
endmodule