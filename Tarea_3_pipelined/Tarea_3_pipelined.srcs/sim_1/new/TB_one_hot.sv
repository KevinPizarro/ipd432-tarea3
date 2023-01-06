`timescale 1ns / 1ps

module TB_one_hot();
    logic clk, rst, inc;
    
    localparam WIDTH = 4;
    logic [WIDTH-1:0] data;
    
    one_hot_counter #(WIDTH) cnt(clk,rst,inc,data);
     
    always #5 clk = ~clk;
    
    initial begin
        rst = 1;
        clk = 1;
        inc = 0;
        # 10 
        rst = 0;
        inc = 1; #10 inc = 0;
        #30 inc = 1; #10 inc = 0;
        #20 inc = 1; #20 inc = 0;
        rst = 1;
    end
endmodule
