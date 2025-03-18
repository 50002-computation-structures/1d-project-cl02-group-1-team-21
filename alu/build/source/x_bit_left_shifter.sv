/*
    This file was generated automatically by Alchitry Labs 2.0.29-BETA.
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
    logic [31:0] R_0129c4f2_i;
    logic [31:0] RR_0129c4f2_i;
    logic [31:0] R_3fc2e79d_i;
    logic [31:0] RR_3fc2e79d_i;
    logic [31:0] M_mux_2_s0;
    logic [31:0][1:0] M_mux_2_in;
    logic [31:0] M_mux_2_out;
    
    genvar idx_0_1867576191;
    
    generate
        for (idx_0_1867576191 = 0; idx_0_1867576191 < 32; idx_0_1867576191 = idx_0_1867576191 + 1) begin: forLoop_idx_0_1867576191
            mux_2 mux_2 (
                .s0(M_mux_2_s0[idx_0_1867576191]),
                .in(M_mux_2_in[idx_0_1867576191]),
                .out(M_mux_2_out[idx_0_1867576191])
            );
        end
    endgenerate
    
    
    always @* begin
        for (RR_0129c4f2_i = 0; RR_0129c4f2_i < 6'h20 - SHIFT; RR_0129c4f2_i = RR_0129c4f2_i + 1) begin
      R_0129c4f2_i = (SHIFT) + RR_0129c4f2_i * (1);
            M_mux_2_in[R_0129c4f2_i][1'h0] = a[R_0129c4f2_i];
            M_mux_2_in[R_0129c4f2_i][1'h1] = a[R_0129c4f2_i - SHIFT];
            M_mux_2_s0[R_0129c4f2_i] = shift;
        end
        for (RR_3fc2e79d_i = 0; RR_3fc2e79d_i < SHIFT; RR_3fc2e79d_i = RR_3fc2e79d_i + 1) begin
      R_3fc2e79d_i = (0) + RR_3fc2e79d_i * (1);
            M_mux_2_in[R_3fc2e79d_i][1'h0] = a[R_3fc2e79d_i];
            M_mux_2_in[R_3fc2e79d_i][1'h1] = pad;
            M_mux_2_s0[R_3fc2e79d_i] = shift;
        end
        out = M_mux_2_out;
    end
    
    
endmodule