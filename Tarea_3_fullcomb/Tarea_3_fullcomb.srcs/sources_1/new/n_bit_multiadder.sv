module n_bit_multiadder #(
    parameter WIDTH = 4,
    parameter DEEPTH = 8
)(
    input  logic [WIDTH-1:0][DEEPTH-1:0] A, B,
    output logic [WIDTH-1:0][DEEPTH-1:0] sum_adder,
    output logic [WIDTH-1:0][DEEPTH-1:0] avg_adder
);
    logic [WIDTH-1:0][DEEPTH:0] comp_adder;
    
    always_comb begin
        for(int i = 0;i < WIDTH; i++) begin
            comp_adder[i] = A[i] + B[i];
            sum_adder[i] = comp_adder[i][DEEPTH-1:0];
            avg_adder[i] = comp_adder[i][DEEPTH:1];
        end
    end
    
    
endmodule
