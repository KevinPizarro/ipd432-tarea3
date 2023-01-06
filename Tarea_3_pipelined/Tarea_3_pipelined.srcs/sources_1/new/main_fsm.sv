module main_fsm import master_state_enum::*; #(
    parameter WIDTH = 4)
    (
    input  logic CLK100MHZ, CPU_RESETN,
    output logic job_ok,  
    
    input  logic rx_ready, tx_busy,     // UART
    input  logic [7:0] rx_data,         // UART
    output logic tx_start,              // UART
//    output logic [7:0] tx_data,         // UART

    input  logic [$clog2(WIDTH)-1:0] addr,  // Counter
    output logic addr_inc,                  // Counter

    input  logic [WIDTH-1:0] write,             // Memory
    output logic [WIDTH-1:0] writeA, writeB,    // Memory
//    input  logic [7:0] vectA_byte, vectB_byte   // Memory

    input  logic [WIDTH-1:0] [7:0] vectA, vectB, Res,   // Data out
    output logic [WIDTH-1:0] [7:0] parallel_out         // Data out
    );
    
    enum_state state, nx_state;
    logic del_addr_inc;
    
// SYNC TRANS
    always_ff @(posedge CLK100MHZ)
        if (~CPU_RESETN)    state <= Standby;
        else                state <= nx_state;

// COMB TRANS
    always_comb
    if (state == Standby && rx_ready) 
        case (rx_data)
            'd1:        nx_state = WriteVecA;
            'd2:        nx_state = WriteVecB;
            'd3:        nx_state = ReadVecA;
            'd4:        nx_state = ReadVecB;                                                        
            'd5:        nx_state = SumVec;
            'd6:        nx_state = AvgVec;
            'd7:        nx_state = ManDis;
            'd8:        nx_state = EucDis;
            default:    nx_state = Standby;
        endcase 
    else if (job_ok)
        nx_state = Standby;
    else
        nx_state = state;
     
// COMB OUT
    always_comb begin
        job_ok = 0;
        tx_start = 0;
//        tx_data = 0;
        parallel_out = 0;
        addr_inc = 0;
        writeA = 0;
        writeB = 0;
        case (state)
        /*  Standby: -equal to default case- */
            WriteVecA:  begin
                            writeA = write;
                            addr_inc = rx_ready;
                            job_ok = (addr == WIDTH-1 && addr_inc) ? 1 : 0 ;
                        end
            WriteVecB:  begin
                            writeB = write;
                            addr_inc = rx_ready;
                            job_ok = (addr == WIDTH-1 && addr_inc) ? 1 : 0 ;
                        end     
            ReadVecA:   begin
                            tx_start = ~tx_busy;
//                            tx_data = vectA_byte;
                            parallel_out = vectA;
                            addr_inc = del_addr_inc;
                            job_ok = (addr == WIDTH-1 && addr_inc) ? 1 : 0 ;
                        end   
            ReadVecB:   begin
                            tx_start = ~tx_busy;
//                            tx_data = vectB_byte;
                            parallel_out = vectB;
                            addr_inc = del_addr_inc;                            
                            job_ok = (addr == WIDTH-1 && addr_inc) ? 1 : 0 ;
                        end   
            SumVec:     begin
//                            nx_addr_inc = ~tx_busy;
//                            tx_data = sum_data;
//                            addr_inc = nx_addr_inc;
//                            job_ok = (addr == WIDTH-1 && addr_inc) ? 1 : 0 ;
                            job_ok = 1;
                        end 
            AvgVec:     begin
//                            nx_addr_inc = ~tx_busy;
//                            tx_data = avg_data;
//                            addr_inc = nx_addr_inc;
//                            job_ok = (addr == WIDTH-1 && addr_inc) ? 1 : 0 ;
                            job_ok = 1;
                        end 
            ManDis:     begin
//                            nx_addr_inc = man_tx;
//                            tx_data = man_data;
//                            addr_inc = man_inc;
//                            job_ok = man_ok;
                            job_ok = 1;
                        end 
            EucDis:     begin
//                            nx_addr_inc = euc_tx;
//                            tx_data = euc_data;
//                            addr_inc = euc_inc;
//                            job_ok = euc_ok;
                            job_ok = 1;
                        end 
        endcase  
    end
    
    always_ff @(posedge CLK100MHZ)
        if(~CPU_RESETN) del_addr_inc <= 0;
        else            del_addr_inc <= tx_start;
endmodule
