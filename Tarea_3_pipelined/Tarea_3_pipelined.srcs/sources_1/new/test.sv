module test (
    input  logic  [7:0]data ,
    output logic  [7:0]data_rev 
    );
    
    always_comb
        for(int i=0; i<8;i++)
            data_rev[i] = data[7-i];
    
endmodule
