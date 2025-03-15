/*
    This file was generated automatically by Alchitry Labs 2.0.24-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module rca #(
        parameter SIZE = 6'h20
    ) (
        input wire [(SIZE)-1:0] a,
        input wire [(SIZE)-1:0] b,
        input wire cin,
        output reg cout,
        output reg [(SIZE)-1:0] s
    );
    logic [31:0] R_7f907a39_i;
    logic [31:0] RR_7f907a39_i;
    logic [(SIZE)-1:0] M_fa_a;
    logic [(SIZE)-1:0] M_fa_b;
    logic [(SIZE)-1:0] M_fa_cin;
    logic [(SIZE)-1:0] M_fa_s;
    logic [(SIZE)-1:0] M_fa_cout;
    
    genvar idx_0_174104680;
    
    generate
        for (idx_0_174104680 = 0; idx_0_174104680 < SIZE; idx_0_174104680 = idx_0_174104680 + 1) begin: forLoop_idx_0_174104680
            fa fa (
                .a(M_fa_a[idx_0_174104680]),
                .b(M_fa_b[idx_0_174104680]),
                .cin(M_fa_cin[idx_0_174104680]),
                .s(M_fa_s[idx_0_174104680]),
                .cout(M_fa_cout[idx_0_174104680])
            );
        end
    endgenerate
    
    
    always @* begin
        M_fa_a = a;
        M_fa_b = b;
        M_fa_cin = 1'h0;
        for (RR_7f907a39_i = 0; RR_7f907a39_i < SIZE; RR_7f907a39_i = RR_7f907a39_i + 1) begin
      R_7f907a39_i = (0) + RR_7f907a39_i * (1);
            if (R_7f907a39_i == 1'h0) begin
                M_fa_cin[1'h0] = cin;
            end else begin
                M_fa_cin[R_7f907a39_i] = M_fa_cout[R_7f907a39_i - 1'h1];
            end
        end
        cout = 1'h0;
        s = M_fa_s;
    end
    
    
endmodule