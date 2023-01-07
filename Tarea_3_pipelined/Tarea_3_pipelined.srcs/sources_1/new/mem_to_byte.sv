module mem_to_byte #(
    parameter WIDTH = 4,
    parameter DEEPTH = 8
)(
    input  logic [$clog2(WIDTH)-1:0] addr,
    input  logic [WIDTH-1:0][DEEPTH-1:0] parallel,
    output logic [DEEPTH-1:0] data
);
    always_comb begin 
        data = 'z;
        for(int i = 0 ; i < WIDTH ; i++)
            if (addr == i) data = parallel[i];
    end        
endmodule