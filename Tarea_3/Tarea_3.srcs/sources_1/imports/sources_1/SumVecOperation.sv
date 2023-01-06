module SumVecOperation #(
    parameter WIDTH = 4,
    parameter DEEPTH = 8
)(
    input logic [WIDTH-1:0][DEEPTH:0] comp_adder,
    output logic [WIDTH-1:0][DEEPTH-1:0] sum
);
    
    always_comb begin
        for(int i = 0;i < WIDTH; i++) begin
            sum[i] = comp_adder[i][DEEPTH-1:0];
        end
    end
endmodule