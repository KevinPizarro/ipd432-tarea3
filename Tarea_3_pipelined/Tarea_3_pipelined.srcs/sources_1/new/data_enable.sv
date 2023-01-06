module data_enable #(
    parameter WIDTH = 4,
    parameter DEEPTH = 8
)(
    input  logic clk, en,
    input  logic [WIDTH-1:0][DEEPTH-1:0] data_in,
    output logic [WIDTH-1:0][DEEPTH-1:0] data_out
);
    genvar i;
    generate
        for(i = 0; i < WIDTH; i++)
            assign data_out = (en) ? data_in : 0;
    endgenerate 
endmodule
