module INVERT(A, B, F, G);
    input[7:0] A, B;
    output[7:0] F, G;
    assign F = ~A;
    assign G = ~B;
endmodule