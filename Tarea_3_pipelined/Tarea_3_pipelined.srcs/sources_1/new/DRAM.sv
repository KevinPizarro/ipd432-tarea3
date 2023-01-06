module DRAM #(
    parameter WIDTH = 4,
    parameter DEEPTH = 8
)(
    input logic clk, rst, 
    input logic [WIDTH-1:0] save_mem, 
    input logic  [WIDTH-1:0] [DEEPTH-1:0] data_in,
    output logic [WIDTH-1:0] [DEEPTH-1:0] data_out
);
    localparam mem_zero = 'b0;
    genvar i;
    generate
        for(i=0;i<WIDTH;i++) begin
            always_ff @(posedge clk) begin 
                if(rst)
                    data_out[i] <= mem_zero;        
                else if(save_mem[i])
                    data_out[i] <= data_in[i];
                else
                    data_out[i] <= data_out[i];
            end 
        end
    endgenerate
endmodule
