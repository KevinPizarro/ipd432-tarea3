module ManDisOperation #(
    parameter WIDTH = 4,
    parameter DEEPTH = 8
)(
    input  logic [WIDTH-1:0][DEEPTH-1:0] A, B,
    output logic [WIDTH-1:0][DEEPTH-1:0] vectOut,
    output logic [19:0] result 
);
    localparam LENGTH = DEEPTH + $clog2(WIDTH);
    logic [WIDTH-1:0][DEEPTH-1:0] abs;
    logic [LENGTH-1:0] sumatory;
    
    always_comb
        for(int i = 0; i < WIDTH ; i++)
            abs[i] = (A[i] > B[i]) ? A[i] - B[i] : B[i] - A[i];
    
    adder_tree #(WIDTH,DEEPTH,LENGTH) adder(
        .addend(abs),.total(sumatory)
    );
    
    always_comb begin
        result  = sumatory;
        vectOut = sumatory;
    end
      
endmodule
