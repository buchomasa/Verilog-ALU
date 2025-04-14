
module adder_8bit(A, B, Sum);
    input [7:0] A, B;
    output [7:0] Sum;

    wire carry0, carry1, carry2, carry3, carry4, carry5, carry6;

    adder v0(.A(A[0]), .B(B[0]), .Cin(1'b0),    .Cout(carry0), .Sum(Sum[0]));
    adder v1(.A(A[1]), .B(B[1]), .Cin(carry0),  .Cout(carry1), .Sum(Sum[1]));
    adder v2(.A(A[2]), .B(B[2]), .Cin(carry1),  .Cout(carry2), .Sum(Sum[2]));
    adder v3(.A(A[3]), .B(B[3]), .Cin(carry2),  .Cout(carry3), .Sum(Sum[3]));
    adder v4(.A(A[4]), .B(B[4]), .Cin(carry3),  .Cout(carry4), .Sum(Sum[4]));
    adder v5(.A(A[5]), .B(B[5]), .Cin(carry4),  .Cout(carry5), .Sum(Sum[5]));
    adder v6(.A(A[6]), .B(B[6]), .Cin(carry5),  .Cout(carry6), .Sum(Sum[6]));
    adder v7(.A(A[7]), .B(B[7]), .Cin(carry6),  .Cout(),       .Sum(Sum[7])); 
endmodule