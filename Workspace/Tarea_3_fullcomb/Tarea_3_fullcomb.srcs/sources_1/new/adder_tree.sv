module adder_tree #(
    parameter WIDTH = 8,
    parameter DEEPTH = 8,
    parameter LENGTH = (DEEPTH + $clog2(WIDTH))
)(
    input  logic [WIDTH-1:0][DEEPTH-1:0] addend,
    output logic [0:0][LENGTH-1:0] total
);
    logic [(WIDTH/2)-1:0][DEEPTH:0] acum;
    
    genvar i;
    generate
        if(WIDTH == 2)
            assign total = addend[0][DEEPTH-1:0] + addend[1][DEEPTH-1:0];
        else begin   
            for(i = 0; i < WIDTH/2 ; i = i + 1)
                assign acum[i] = addend[2*i]+addend[2*i+1];
            adder_tree #(WIDTH/2,DEEPTH+1) ins(
                .addend(acum),.total(total)
            ); 
        end
    endgenerate 

endmodule
