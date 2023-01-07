module data_enable #(
    parameter WIDTH = 4,
    parameter DEEPTH = 8
)(
    input  logic en,
    input  logic [WIDTH-1:0][DEEPTH-1:0] data_in,
    output logic [WIDTH-1:0][DEEPTH-1:0] data_out
);
    always_comb 
        for(int i = 0; i < WIDTH; i++)
            data_out = (en) ? data_in : 0;
endmodule
