`timescale 1ns / 1ns
`include "shiftR.v"

module testbench;   
    reg[7:0] A, B;
    wire[7:0] F, G;

    shiftRight UUT(A, B, F, G);
    initial begin
        A = 8'd8;
        B = 8'd8;
        #1;
        $display("%b %b >> %b %b", A, B, F, G);
        A = 8'd255;
        B = 8'd255;
        #1;
        $display("%b %b >> %b %b", A, B, F, G);
        A = 8'd1;
        B = 8'd1;
        #1;
        $display("%b %b >> %b %b", A, B, F, G);
    end
endmodule