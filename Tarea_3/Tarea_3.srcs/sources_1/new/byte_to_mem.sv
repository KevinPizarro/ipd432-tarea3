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
    logic [$clog2(WIDTH)-1:0] pr_addr;
    always_ff @(posedge clk)
        if(rst) pr_addr <= 'b0;
        else    pr_addr <= addr;
        
    genvar i;
    generate 
        for(i=0;i<WIDTH;i++)
            always_comb begin
                save[i] = (addr_inc && pr_addr == i) ? 1 : 0 ;
                parallel[i] = data;
            end
    endgenerate

endmodule