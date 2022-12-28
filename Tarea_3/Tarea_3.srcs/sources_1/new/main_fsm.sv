module main_fsm import master_state_enum::*; #(
    parameter N = 4)
    (
    input logic CLK100MHZ, CPU_RESETN,
    output logic job_ok,  
    
    input logic rx_ready, tx_busy,      // UART
    input logic [7:0] rx_data,          // UART
    output logic tx_start,              // UART
    output logic [7:0] tx_data,         // UART

    input logic [$clog2(N)-1:0] addr,   // Counter
    output logic addr_inc,                  // Counter

    input logic [N-1:0] write,              // Memory
    output logic [N-1:0] writeA, writeB    // Memory
    );
    
    enum_state state, nx_state;
    
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
        tx_data = 0;
        addr_inc = 0;
        writeA = 0;
        writeB = 0;
        case (state)
            Standby:    addr_inc = rx_ready;
            WriteVecA:  begin
                            writeA = write;
                            addr_inc = rx_ready;
                            job_ok = (addr == N-1 && addr_inc) ? 1 : 0 ;
                        end
            WriteVecB:  begin
                            writeB = write;
                            addr_inc = rx_ready;
                            job_ok = (addr == N-1 && addr_inc) ? 1 : 0 ;
                        end     
            ReadVecA:   begin
//                            tx_start = ~tx_busy;
//                            tx_data = vectA;
//                            addr_inc = tx_start;
//                            job_ok = (addr == N-1 && addr_inc) ? 1 : 0 ;
                            job_ok = 1;
                        end   
            ReadVecB:   begin
//                            tx_start = ~tx_busy;
//                            tx_data = vectB;
//                            addr_inc = tx_start;                            
//                            job_ok = (addr == N-1 && addr_inc) ? 1 : 0 ;
                            job_ok = 1;
                        end   
            SumVec:     begin
//                            tx_start = ~tx_busy;
//                            tx_data = sum_data;
//                            addr_inc = tx_start;
//                            job_ok = (addr == N-1 && addr_inc) ? 1 : 0 ;
                            job_ok = 1;
                        end 
            AvgVec:     begin
//                            tx_start = ~tx_busy;
//                            tx_data = avg_data;
//                            addr_inc = tx_start;
//                            job_ok = (addr == N-1 && addr_inc) ? 1 : 0 ;
                            job_ok = 1;
                        end 
            ManDis:     begin
//                            tx_start = man_tx;
//                            tx_data = man_data;
//                            addr_inc = man_inc;
//                            job_ok = man_ok;
                            job_ok = 1;
                        end 
            EucDis:     begin
//                            tx_start = euc_tx;
//                            tx_data = euc_data;
//                            addr_inc = euc_inc;
//                            job_ok = euc_ok;
                            job_ok = 1;
                        end 
        endcase  
    end
endmodule
