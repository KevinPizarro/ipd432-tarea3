module byte_to_mem #(
    parameter WIDTH = 4,
    parameter DEEPTH = 8
)(
    input logic clk, rst, addr_inc,
    input logic [DEEPTH-1:0] data,
    input logic [$clog2(WIDTH)-1:0] addr,
    output logic [WIDTH-1:0] save,
    output logic [WIDTH-1:0] [DEEPTH-1:0] parallel
);
    logic [$clog2(WIDTH)-1:0] pr_addr;  // previus addr
    always_ff @(posedge clk)
        if(rst) pr_addr <= 'b0;
        else    pr_addr <= addr;
        
    always_comb
        for(int i = 0; i < WIDTH ; i++) begin
            save[i] = (addr_inc && pr_addr == i) ? 1 : 0 ;
            parallel[i] = data;
        end

endmodule