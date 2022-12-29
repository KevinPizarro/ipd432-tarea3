module mem_to_byte #(
    parameter WIDTH = 4,
    parameter DEEPTH = 8
)(
    input  logic [$clog2(WIDTH)-1:0] addr,
    input  logic [WIDTH-1:0][DEEPTH-1:0] parallel,
    output logic [DEEPTH-1:0] data
//    output logic trigger
);
//    always_comb data = 0;
//    genvar i;
//    generate
//        for(i=0;i<WIDTH;i++) always_comb
//            if(addr == i) data = parallel[i];
//            else data = 0;
//    endgenerate 
    always_comb begin 
        data 
        for(int i = 0; i < WIDTH ; i++ )
            if ()data = (addr == i) ? parallel[i] : 0;
    end        
//    assign trigger = (addr != pr_addr) ? 1 : 0;    
endmodule