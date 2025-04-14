`timescale 1ns / 1ns
`include "shiftL.v"

module testbench;
    reg[7:0] A, B;
    wire[7:0] F, G;

    shiftLeft UUT(A, B, F, G);
    initial begin
        A = 8'd8;
        B = 8'd8;
        #1;
        $display("%b %b << %b %b", A, B, F, G);
        A = 8'b10001000;
        B = 8'b10001000;
        #1;
        $display("%b %b << %b %b", A, B, F, G);
    end
endmodule