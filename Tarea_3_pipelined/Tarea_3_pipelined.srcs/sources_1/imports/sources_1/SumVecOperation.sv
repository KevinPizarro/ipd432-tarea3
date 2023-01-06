module SumVecOperation #(
    parameter WIDTH = 4,
    parameter DEEPTH = 8
)(
    input logic clk,
    input logic [WIDTH-1:0][DEEPTH-1:0] sum_adder,
    output logic [WIDTH-1:0][DEEPTH-1:0] sum
);
    
    always_ff @(posedge clk) begin
        for(int i = 0;i < WIDTH; i++) begin
            sum[i] <= sum_adder[i];
        end
    end
endmodule