module adder(A, B, Cin, Cout, Sum);
    input A, B, Cin;
    output Cout, Sum;

    assign Sum = A ^ B ^ Cin; 
    assign Cout = (A & B) | (A & Cin) | (B & Cin); 
endmodule