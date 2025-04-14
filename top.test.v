`timescale 1ns / 1ns
`include "top.v"

module testbench;
    reg [7:0] opA, opB;
    reg [2:0] opS;
    wire [7:0] R;

    top UUT (.opA(opA), .opB(opB), .opS(opS), .R(R));

    initial begin
        opA = 8'd100;  
        opB = 8'd50;  

        $display("opA = %b, opB = %b", opA, opB);
        $display(" S   |   R");
        $display("-----|--------");

        for (integer i = 0; i < 8; i = i + 1) begin
            opS = i[2:0];   
            #1;             
            $display("%03b | %08b", opS, R);
        end

        $finish;
    end
endmodule