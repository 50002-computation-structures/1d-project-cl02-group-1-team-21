/*
    This file was generated automatically by Alchitry Labs 2.0.24-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module x_bit_left_shifter #(
        parameter SHIFT = 4'h8
    ) (
        input wire [31:0] a,
        input wire shift,
        input wire pad,
        output reg [31:0] out
    );
    logic [31:0] R_352315d9_i;
    logic [31:0] RR_352315d9_i;
    logic [31:0] R_12701a65_i;
    logic [31:0] RR_12701a65_i;
    logic [31:0] M_mux_2_s0;
    logic [31:0][1:0] M_mux_2_in;
    logic [31:0] M_mux_2_out;
    
    genvar idx_0_638190781;
    
    generate
        for (idx_0_638190781 = 0; idx_0_638190781 < 32; idx_0_638190781 = idx_0_638190781 + 1) begin: forLoop_idx_0_638190781
            mux_2 mux_2 (
                .s0(M_mux_2_s0[idx_0_638190781]),
                .in(M_mux_2_in[idx_0_638190781]),
                .out(M_mux_2_out[idx_0_638190781])
            );
        end
    endgenerate
    
    
    logic [31:0] shifted_bits;
    always @* begin
        for (RR_352315d9_i = 0; RR_352315d9_i < 6'h20 - SHIFT; RR_352315d9_i = RR_352315d9_i + 1) begin
      R_352315d9_i = (SHIFT) + RR_352315d9_i * (1);
            shifted_bits[R_352315d9_i] = a[R_352315d9_i - SHIFT];
            M_mux_2_in[R_352315d9_i][1'h0] = a[R_352315d9_i];
            M_mux_2_in[R_352315d9_i][1'h1] = shifted_bits[R_352315d9_i];
            M_mux_2_s0[R_352315d9_i] = shift;
        end
        for (RR_12701a65_i = 0; RR_12701a65_i < SHIFT; RR_12701a65_i = RR_12701a65_i + 1) begin
      R_12701a65_i = (0) + RR_12701a65_i * (1);
            shifted_bits[R_12701a65_i] = pad;
            M_mux_2_in[R_12701a65_i][1'h0] = a[R_12701a65_i];
            M_mux_2_in[R_12701a65_i][1'h1] = shifted_bits[R_12701a65_i];
            M_mux_2_s0[R_12701a65_i] = shift;
        end
        out = M_mux_2_out;
    end
    
    
endmodule