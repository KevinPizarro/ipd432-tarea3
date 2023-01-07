`timescale 1ns / 1ps

module TB_one_hot();
    logic clk, rst, inc;
    
    logic [7:0] data, no_data;
    
    test a(.data(data),.data_rev(no_data));
    
    always #5 clk = ~clk;
    
    initial begin
        rst = 1;
        clk = 1;
        inc = 0;
        # 10 
        data  = 8'b11011001;
    end
endmodule
