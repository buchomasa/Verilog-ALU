module mux8to1(
    input  [7:0] A, B, C, D, E, F, G, H,
    input  [2:0] S,
    output reg [7:0] O
);
    always @(*) begin
        case (S)
            3'b000: O = A;
            3'b001: O = B;
            3'b010: O = C;
            3'b011: O = D;
            3'b100: O = E;
            3'b101: O = F;
            3'b110: O = G;
            3'b111: O = H;
            default: O = 8'b00000000;
        endcase
    end
endmodule