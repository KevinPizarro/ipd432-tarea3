module DRAM #(
    parameter WIDTH = 4,
    parameter DEEPTH = 8
)(
    input logic clk, rst, 
    input logic [WIDTH-1:0] save_mem, 
    input logic  [WIDTH-1:0] [DEEPTH-1:0] data_in,
    output logic [WIDTH-1:0] [DEEPTH-1:0] data_out
);
    always_ff @(posedge clk) begin 
        for(int i = 0;i<WIDTH;i++) begin
            if(rst)
                data_out[i] <= 'b0;        
            else if(save_mem[i])
                data_out[i] <= data_in[i];
            else
                data_out[i] <= data_out[i];
        end 
    end
endmodule
