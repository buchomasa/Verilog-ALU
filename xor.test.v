`timescale 1ns / 1ns
`include "xor.v"

module testbench;
    reg[7:0] A, B;
    wire[7:0] F;

    XOR UUT(A, B, F);

    initial begin
         A = 8'd1; B = 8'd1;
        #1 $display("%d ^ %d = %d", A, B, F);

        A = 8'd255; B = 8'd123;
        #1 $display("%h ^ %h = %h", A, B, F);

        A = 8'd135; B = 8'h0A;
        #1 $display("%h ^ %h = %h", A, B, F);
    end
endmodule