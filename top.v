`include "adder.v"
`include "adder_8bit.v"
`include "subtractor_8bit.v"
`include "and.v"
`include "or.v"
`include "xor.v"
`include "invert.v"
`include "shiftL.v"
`include "shiftR.v"
`include "mux8to1.v"

module top(opA, opB, opS, R);
    input [7:0] opA, opB;
    input [2:0] opS;
    output [7:0] R;
    wire [7:0] Sum, Diff, AndOut, OrOut, XorOut, INV, SHL, SHR, S;
    adder_8bit ADD0 (.A(opA), .B(opB), .Sum(Sum));
    subtractor_8bit SUB0 (.A(opA), .B(opB), .Sum(Diff));
    AND AND0 (.A(opA), .B(opB), .F(AndOut));
    OR OR0  (.A(opA), .B(opB), .F(OrOut));
    XOR XOR0 (.A(opA), .B(opB), .F(XorOut));
    INVERT INV0 (.A(opA), .B(opB), .F(INV));
    shiftLeft SHL0 (.A(opA), .B(opB), .F(SHL));
    shiftRight SHR0 (.A(opA), .B(opB), .F(SHR));
    mux8to1 MUX0 (.A(Sum), .B(Diff), .C(AndOut), .D(OrOut), .E(XorOut), .F(INV), .G(SHL), .H(SHR), .S(opS), .O(R));
endmodule