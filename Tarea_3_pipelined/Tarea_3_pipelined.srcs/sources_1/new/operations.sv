module operation #(
    parameter WIDTH = 4,
    parameter DEEPTH = 8
)(
    input  logic clk, en_data,
    input  logic [WIDTH-1:0] [DEEPTH-1:0] memA, memB,
    output logic [WIDTH-1:0] [DEEPTH-1:0] vectA, vectB, vectSum, vectAvg, vectMan,
    output logic [19:0] numMan
);
    logic [WIDTH-1:0] [DEEPTH-1:0] A, B, sum_adder, avg_adder;
    
    data_enable #(WIDTH, DEEPTH) dataA(
        .en(en_data),.data_in(memA),.data_out(A)
    );
    data_enable #(WIDTH, DEEPTH) dataB(
        .en(en_data),.data_in(memB),.data_out(B)
    ); 
    
    always_comb begin
        vectA = memA;
        vectB = memB;
    end
// ------------------------------------- OPERATIONS ---------------------------------------        
    n_bit_multiadder #(WIDTH, DEEPTH) adder(        // modulo 
        .sum_adder(vectSum),.avg_adder(vectAvg),
        .A(A),.B(B),.clk(clk)
    );
            
    ManDisOperation #(WIDTH, DEEPTH) Man_Dist_inst(
        .clk(clk),.A(A),.B(B),
        .vectOut(vectMan),.result(numMan)
    );
    
endmodule
