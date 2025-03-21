/*
    This file was generated automatically by Alchitry Labs 2.0.24-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module compare (
        input wire z,
        input wire v,
        input wire n,
        input wire [5:0] alufn,
        output reg cmp
    );
    logic M_compare_mux_s0;
    logic M_compare_mux_s1;
    logic [3:0] M_compare_mux_in;
    logic M_compare_mux_out;
    
    mux_4 compare_mux (
        .s0(M_compare_mux_s0),
        .s1(M_compare_mux_s1),
        .in(M_compare_mux_in),
        .out(M_compare_mux_out)
    );
    
    
    always @* begin
        cmp = 1'h0;
        M_compare_mux_s1 = alufn[2'h2];
        M_compare_mux_s0 = alufn[1'h1];
        M_compare_mux_in = {1'h0, z, n ^ v, (n ^ v) | z};
        cmp = M_compare_mux_out;
    end
    
    
endmodule