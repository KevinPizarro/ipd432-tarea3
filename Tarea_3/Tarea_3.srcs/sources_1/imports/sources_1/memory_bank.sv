module memory_bank #( parameter BIT_WIDTH=8 )(
    input logic clk, rst, BTN,
    input logic [BIT_WIDTH-1:0] data,
    output logic [BIT_WIDTH-1:0] mem
    );
    
    localparam mem_zero = 'b0;              //primer número del registro
    
    always_ff @(posedge clk) begin 
        if(rst)
            mem <= mem_zero;        
        else if(BTN)
            mem <= data;
        else
            mem <= mem;
    end          
    
endmodule
