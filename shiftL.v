module shiftLeft(A, B, F, G);
    input[7:0] A, B;
    output[7:0] F, G;
    assign F = A << 1;
    assign G = B << 1;
endmodule