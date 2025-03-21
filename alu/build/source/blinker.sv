/*
    This file was generated automatically by Alchitry Labs 2.0.24-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module blinker (
        input wire clk,
        input wire rst,
        output reg blink
    );
    logic [25:0] D_counter_d, D_counter_q = 0;
    always @* begin
        D_counter_d = D_counter_q;
        
        blink = D_counter_q[5'h19];
        D_counter_d = D_counter_q + 1'h1;
    end
    
    
    always @(posedge (clk)) begin
        if ((rst) == 1'b1) begin
            D_counter_q <= 0;
        end else begin
            D_counter_q <= D_counter_d;
        end
    end
endmodule