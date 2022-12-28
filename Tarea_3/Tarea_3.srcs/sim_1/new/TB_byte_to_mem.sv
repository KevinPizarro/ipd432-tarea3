`timescale 1ns / 1ps

module TB_byte_to_mem();
    logic clk, rst, inc;
    
    localparam WIDTH = 4;
    logic [7:0] data;
    logic [WIDTH-1:0] save;
    logic [WIDTH-1:0] [7:0] out, mem;
    
    localparam DIRW = $clog2(WIDTH);
    logic [DIRW-1:0] addr;
    
    counter_with_inc #(DIRW) master_count(
        .clk(clk),.rst(rst),
        .inc(inc),.count(addr)
    );
    
    byte_to_mem  #(WIDTH) DUT(
        .clk(clk),.rst(rst),
        .addr_inc(inc),.data(data),.addr(addr),
        .save(save),.paralell(out)
    );
    
    DRAM #(WIDTH) RAM(
        .clk(clk),.rst(rst),.save_mem(save),
        .data_in(out),.data_out(mem)
    );
    
    always #5 clk = ~clk;
    
    initial begin
        rst = 1;
        clk = 1;
        inc = 0;
        data = 8'hFF;
        # 10 
        rst = 0;
        #50 inc = 1; #10 inc = 0; data = 8'h5C; 
        #50 inc = 1; #10 inc = 0; data = 8'h0F;
        #50 inc = 1; #10 inc = 0; data = 8'h11;
        #50 rst = 1;
    end
endmodule
