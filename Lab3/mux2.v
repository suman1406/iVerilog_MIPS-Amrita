module mux2to1(a, b, o, s);
    input a, b, s;
    output o;
    wire w1, w2, w3;
    // not(w1, s);
    // and(w2, a, w1);
    // and(w3, b, s);
    // or(o, w2, w3);

    not (w1, s);   // Invert S for AND gate operation
    and (w2, a, w1); // A AND NOT(S)
    and (w3, b, s);  // B AND S
    or (o, w2, w3);   // B AND S
endmodule

// s = 0; a = 0; b = 0; o = 0
// s = 0; a = 0; b = 1; o = 0
// s = 0; a = 1; b = 0; o = 1
// s = 0; a = 1; b = 1; o = 1
// s = 1; a = 0; b = 0; o = 0
// s = 1; a = 0; b = 1; o = 1
// s = 1; a = 1; b = 0; o = 0
// s = 1; a = 1; b = 1; o = 1

// For this truth table give code for 2 to 1 multiplexer gate level, data flow and behavioral level.