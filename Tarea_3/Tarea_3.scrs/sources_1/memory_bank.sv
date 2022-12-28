`timescale 1ns / 1ps

module memory_bank #( parameter BIT_WIDTH=8 )(
    input logic clk, reset, BTN,
    input logic [BIT_WIDTH-1:0] data,
    output logic [BIT_WIDTH-1:0] mem
    );
    
    localparam mem_zero = 'b0;              //primer número del registro
    logic [BIT_WIDTH-1:0] mem_temp = mem_zero;
    
    always_ff @(posedge clk) begin 
        if(reset)
            mem <= mem_zero;        
        else 
            mem <= mem_temp;
    end    
    
    always_comb
        if(BTN)
            mem_temp = data;
        else
            mem_temp = mem;
    
            
    
endmodule
