`timescale 1ns / 1ns
`include "adder_8bit.v"

module testbench;
    reg[7:0] A, B;
    wire[7:0] Sum;
    adder_8bit UUT(A, B, Sum);
    initial begin
        A = 8'd0;
        B = 8'd0;
        #1;
        $display("%d + %d = %d", A, B, Sum);
        A = 8'd255;
        B = 8'hFF;
        #1;
        $display("%h + %h = %h", A, B, Sum);

        A = 8'd135;
        B = 8'h0A;
        #1;
        $display("%d + %h = %d", A, B, Sum);
    end
endmodule