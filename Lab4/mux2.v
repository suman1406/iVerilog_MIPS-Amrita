// module mux2to1(a, b, o, s);
//     input a, b, s;
//     output o;
//     wire w1, w2, w3;
//     initial begin
//         $display("THIS IS GATE LEVEL MODELLING");
//     end

//     not (w1, s);   // Invert S for AND gate operation
//     and (w2, b, w1); // A AND NOT(S)
//     and (w3, a, s);  // B AND S
//     or (o, w2, w3);   // B AND S
// endmodule

// Data Level Modelling
// module mux2to1(a, b, o, s);
//     input a, b, s;
//     output o;
//     assign o = (s & a) | (~s & b);
//     initial begin
//         $display("THIS IS DATA LEVEL MODELLING");
//     end
// endmodule

// Behavioral Level Modelling
module mux2to1(a, b, o, s);
    input a, b;
    input s;
    output reg o;
    always @(*) begin : MUX_BLOCK
        if (s == 1'b0) begin
            o <= a;
        end else begin
            o <= b;
        end
    end
    initial begin
        $display("THIS IS BEHAVIORAL LEVEL MODELLING");
    end
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