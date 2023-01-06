module save_and_transmit #(
    parameter WIDTH = 4,
    parameter DEEPTH = 8
)(
    input  logic clk_main, clk_logic, rst, 
    input  logic en, tx_busy,
    output logic tx_start, addr_inc,
    output logic [WIDTH-1:0] save_mem
);
    enum logic [1:0] {IDLE, save , transmit} state, nx_state;
    logic save_ok; 
    
    always_ff @(posedge clk_main)
        if(rst) state <= IDLE;
        else    state <= nx_state;
  
    always_comb begin
        nx_state = IDLE;
        save_mem = 0;
        tx_start = 0;
        case(state)
            IDLE:       if(en)  nx_state = save;
            save:       begin
                            save_mem = ~'b0;
                            if (save_ok)    nx_state = transmit;
                            else            nx_state = save;
                        end
            transmit:   begin
                            tx_start = ~tx_busy;
                            if(~en) nx_state = IDLE;
                            else    nx_state = transmit;
                        end
        endcase
    end 
    
    always_ff @(posedge clk_main)
        if(rst) addr_inc <= 0;
        else    addr_inc <= tx_start;
    always_ff @(posedge clk_logic)
        if(rst)                     save_ok <= 0;
        else if(state == save)      save_ok <= 1;
        else                        save_ok <= 0;
  
endmodule
