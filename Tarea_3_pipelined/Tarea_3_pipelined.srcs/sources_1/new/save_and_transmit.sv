module save_and_transmit import master_state_enum::*;#(
    parameter WIDTH = 4,
    parameter DEEPTH = 8
)(
    input  logic clk,rst, tx_busy,
    input  enum_state main_state, 
    output logic tx_start, addr_inc,
    output logic [WIDTH-1:0] save_mem
);
    enum logic [1:0] {IDLE, save , transmit} state, nx_state;
    logic en_op, tx_trig; 
    
    localparam DELAY = $clog2(WIDTH);
    localparam BW = $clog2(DELAY);
    logic [BW-1:0] timer;
    
    always_ff @(posedge clk)
        if (rst) timer <= 0;
        else if (state != nx_state) timer <= 0;
        else timer <= timer + 1;  
    
    always_ff @(posedge clk)
        if(rst) state <= IDLE;
        else    state <= nx_state;
 
    always_comb begin
        en_op = 0;
        tx_trig = 0;
        case(main_state)
            ReadVecA, ReadVecB:
                begin
                    en_op = 1;
                    tx_trig = 1;
                end
            SumVec, AvgVec: 
                begin
                    en_op = 1;
                    tx_trig = (timer == 1) ? 1 : 0;
                end
            ManDis: 
                begin
                    en_op = 1;
                    tx_trig = (timer == DELAY-1) ? 1 : 0;
                end
        endcase
    end         
    
    always_comb begin
        nx_state = IDLE;
        save_mem = 0;
        tx_start = 0;
        case(state)
            IDLE:       if(en_op)  nx_state = save;
            save:       begin
                            save_mem = ~'b0;
                            if (tx_trig)    nx_state = transmit;
                            else            nx_state = save;
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
