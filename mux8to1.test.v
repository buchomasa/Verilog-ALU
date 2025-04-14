`timescale 1ns / 1ns
`include "mux8to1.v"

module testbench;
    reg [7:0] A, B, C, D, E, F, G, H;
    reg [2:0] S;
    wire [7:0] O;

    mux8to1 UUT(A, B, C, D, E, F, G, H, S, O);

    initial begin
        A = 8'hA0; B = 8'hB1; C = 8'hC2; D = 8'hD3;
        E = 8'hE4; F = 8'hF5; G = 8'h16; H = 8'h27;

        $display(" S |   O ");
        $display("-----------");
        for (integer i = 0; i < 8; i = i + 1) begin
            S = i[2:0];
            #1;  
            $display("%2b | %b", S, O);
        end
    end
endmodule