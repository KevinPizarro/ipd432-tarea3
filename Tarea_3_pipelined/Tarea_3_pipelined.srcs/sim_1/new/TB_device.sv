`timescale 10ns / 1ps

module TB_device();
    
    logic clk, rst;
    logic rx, tx;
    
    device #(
        .BAUD_RATE(100_000_00)
    ) DUT(
        .CLK100MHZ(clk),.CPU_RESETN(~rst),    
        .UART_TXD_IN(rx),.UART_RXD_OUT(tx),
        .SEG(),.AN()
    );

    always #0.5 clk = ~clk;
    
    initial begin
        clk = 1;
        rst = 1;
        rx = 1;
        #10 rst = 0;
        #100
    // WRITE VECTOR A
        #10 rx = 0;
        #10 rx = 1; #10 rx = 0; #10 rx = 0; #10 rx = 0;
        #10 rx = 0; #10 rx = 0; #10 rx = 0; #10 rx = 0;
        #10 rx = 1;
    // 1st element (66)
        #10 rx = 0;
        #10 rx = 0; #10 rx = 1; #10 rx = 0; #10 rx = 0;
        #10 rx = 0; #10 rx = 0; #10 rx = 1; #10 rx = 0;
        #10 rx = 1;
    // 2nd element (163)
        #10 rx = 0;
        #10 rx = 1; #10 rx = 1; #10 rx = 0; #10 rx = 0;
        #10 rx = 0; #10 rx = 1; #10 rx = 0; #10 rx = 1;
        #10 rx = 1;
    // 3rd element (180)
        #10 rx = 0;
        #10 rx = 0; #10 rx = 0; #10 rx = 1; #10 rx = 0;
        #10 rx = 1; #10 rx = 1; #10 rx = 0; #10 rx = 1;
        #10 rx = 1;
    // 4th element (24)
        #10 rx = 0;
        #10 rx = 0; #10 rx = 0; #10 rx = 0; #10 rx = 1;
        #10 rx = 1; #10 rx = 0; #10 rx = 0; #10 rx = 0;
        #10 rx = 1;
        
    // WRITE VECTOR B
        #10 rx = 0;
        #10 rx = 0; #10 rx = 1; #10 rx = 0; #10 rx = 0;
        #10 rx = 0; #10 rx = 0; #10 rx = 0; #10 rx = 0;
        #10 rx = 1;
    // 1st element (99)
        #10 rx = 0;
        #10 rx = 1; #10 rx = 1; #10 rx = 0; #10 rx = 0;
        #10 rx = 0; #10 rx = 1; #10 rx = 1; #10 rx = 0;
        #10 rx = 1;
    // 2nd element (59)
        #10 rx = 0;
        #10 rx = 1; #10 rx = 1; #10 rx = 0; #10 rx = 1;
        #10 rx = 1; #10 rx = 1; #10 rx = 0; #10 rx = 0;
        #10 rx = 1;
    // 3rd element (120)
        #10 rx = 0;
        #10 rx = 0; #10 rx = 0; #10 rx = 0; #10 rx = 1;
        #10 rx = 1; #10 rx = 1; #10 rx = 1; #10 rx = 0;
        #10 rx = 1;
    // 4th element (62)
        #10 rx = 0;
        #10 rx = 0; #10 rx = 1; #10 rx = 1; #10 rx = 1;
        #10 rx = 1; #10 rx = 1; #10 rx = 0; #10 rx = 0;
        #10 rx = 1;
        
    // READ VECTOR A
        #500 rx = 0;
        #10 rx = 1; #10 rx = 1; #10 rx = 0; #10 rx = 0;
        #10 rx = 0; #10 rx = 0; #10 rx = 0; #10 rx = 0;
        #10 rx = 1;
    // READ VECTOR B
        #500 rx = 0;
        #10 rx = 0; #10 rx = 0; #10 rx = 1; #10 rx = 0;
        #10 rx = 0; #10 rx = 0; #10 rx = 0; #10 rx = 0;
        #10 rx = 1;
    // SUM (86,44,222,165)'
        #500 rx = 0;
        #10 rx = 1; #10 rx = 0; #10 rx = 1; #10 rx = 0;
        #10 rx = 0; #10 rx = 0; #10 rx = 0; #10 rx = 0;
        #10 rx = 1;
    // AVG (43,150,111,82)'
        #500 rx = 0;
        #10 rx = 0; #10 rx = 1; #10 rx = 1; #10 rx = 0;
        #10 rx = 0; #10 rx = 0; #10 rx = 0; #10 rx = 0;
        #10 rx = 1;
    // MAN (235)
        #500 rx = 0;
        #10 rx = 1; #10 rx = 1; #10 rx = 1; #10 rx = 0;
        #10 rx = 0; #10 rx = 0; #10 rx = 0; #10 rx = 0;
        #10 rx = 1;
    end
endmodule
