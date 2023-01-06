`timescale 1ns / 1ps

module TB_Manhattan();
    localparam WIDTH = 8;
    localparam DEEPTH = 8;
    logic [WIDTH-1:0][DEEPTH-1:0] memA, memB, vectOut;
    logic [19:0] numMan;
    
    ManDisOperation #(8, 8) DUT(
        .en(1),
        .A(memA),.B(memB),
        .vectOut(vectMan),
        .result(numMan)
    );
    
    
endmodule
