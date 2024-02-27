module OR_gate(input A, input B, output Y);
    assign Y = A | B;
endmodule

module NOT_gate(input A, output Y);
    assign Y = ~A;
endmodule

module NOR_gate(input A, input B, output Y);
    assign Y = ~(A | B);
endmodule

module NAND_gate(input A, input B, output Y);
    assign Y = ~(A & B);
endmodule

module XOR_gate(input A, input B, output Y);
    assign Y = A ^ B;
endmodule

module XNOR_gate(input A, input B, output Y);
    assign Y = ~(A ^ B);
endmodule