module circuit(input A, input B, input Cin, output S, output Cout);
    wire S, c1;
    assign S=A^B^Cin;

    assign carry1 = A & B;
    assign carry2 = (A ^ B) & Cin;

    assign Cout = carry1 | carry2;
endmodule