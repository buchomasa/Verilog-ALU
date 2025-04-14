`timescale 1ns / 1ns
`include "adder.v"
module testbench;
    reg A, B, Cin;
    wire Cout, Sum;

    adder UUT(A, B, Cin, Cout, Sum);

    initial begin
        $display("A B C | C S");
        $display("------|----");
        for (integer i = 0; i < 8; i++) begin
            {A, B, Cin} = i[2:0]; #1;
            $display("%b %b %b | %b %b", A, B, Cin, Cout, Sum);
        end
    end
endmodule