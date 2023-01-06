module AvgVecOperation #(
    parameter WIDTH = 4,
    parameter DEEPTH = 8
)(
    input logic clk,
    input logic [WIDTH-1:0][DEEPTH-1:0] avg_adder,
    output logic [WIDTH-1:0][DEEPTH-1:0] avg
);
    
    always_ff @(posedge clk) begin
        for(int i = 0;i < WIDTH; i++) begin
            avg[i] <= avg_adder[i];
        end
    end
endmodule