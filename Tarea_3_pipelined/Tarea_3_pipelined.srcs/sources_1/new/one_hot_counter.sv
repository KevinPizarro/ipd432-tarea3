module one_hot_counter #(parameter WIDTH = 4)(
    input logic clk, rst, inc,
    output logic [WIDTH-1:0] count
    );
    
    always_ff @(posedge clk) begin
        if (rst)
            count <= 'b1;
        else if(inc)
            count = count << 1;
    end
    
    
endmodule
