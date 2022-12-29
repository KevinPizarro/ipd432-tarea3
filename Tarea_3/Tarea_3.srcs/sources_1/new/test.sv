module test #(parameter X = 4)(
    input  logic [X-1:0] onehot,
    input  logic i_data [X],
    output logic o_data
    );
    
    always_comb
    begin
        o_data = 'z;
        for(int i=0;i<X;i++) begin
            if(onehot==(1<<i))
                o_data = i_data[i];
        end
    end
endmodule
