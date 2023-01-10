module save_and_transmit import master_state_enum::*;#(
    parameter WIDTH = 4,
    parameter DEEPTH = 8
)(
    input  logic clk,rst,tx_busy,en_op,
    output logic tx_start, addr_inc,
    output logic [WIDTH-1:0] save_mem
);
    enum logic [1:0] {IDLE, save , transmit} state, nx_state;
    
    localparam DELAY = $clog2(WIDTH);
    localparam BW = $clog2(DELAY);
    logic [BW-1:0] timer;
    
    always_ff @(posedge clk)
        if(rst) state <= IDLE;
        else    state <= nx_state;  
    
    always_comb begin
        nx_state = IDLE;
        save_mem = 0;
        tx_start = 0;
        case(state)
            IDLE:       if(en_op)  nx_state = save;
            save:       begin
                            save_mem = ~'b0;
                            nx_state = transmit;
                        end
            transmit:   begin
                            tx_start = ~tx_busy;
                            if(~en_op)      nx_state = IDLE;
                            else            nx_state = transmit;
                        end
        endcase
    end 
    
    always_ff @(posedge clk)
        if(rst) addr_inc <= 0;
        else    addr_inc <= tx_start;
  
endmodule
