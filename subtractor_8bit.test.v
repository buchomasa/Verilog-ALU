`timescale 1ns/1ns
`include "subtractor_8bit.v"

module testbench;
    reg[7:0] A, B;
    wire[7:0] Sum;
    subtractor_8bit UUT(A, B, Sum);
    initial begin
        A = 8'd10;
        B = 8'd5;
        #1;
        $display("%d - %d = %d", A, B, Sum);
        A = 8'd255;
        B = 8'd123;
        #1;
        $display("%h - %h = %h", A, B, Sum);
        A = 8'd135;
        B = 8'h0A;
        #1;
        $display("%d - %h = %h", A, B, Sum);
    end
endmodule