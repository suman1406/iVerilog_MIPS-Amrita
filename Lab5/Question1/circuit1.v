module circuit1(input A, input B, input C, input D, output Z);
    wire w1, w2, w3, w4, w5, n;
    or(w1, C, D);
    not(n, w1);
    or(w2, n, A);
    xor(w3, B, D);
    and(w4, C, B);
    or(w5, w3, w4);
    xor(Z, w2, w5);
endmodule