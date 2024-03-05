// 4x1 Multiplexer
// Gate Level Modelling
module mux4(a, b, c, o, s);
  input a, b, c, s;
  output reg o;

  wire w1, w2, w3, w4, w5;

  not (w1, s);
  and (w3, a, w1);
  and (w4, b, s);
  or (w5, w3, w4);
  always @(a or b or c or s) begin
    o = w5;
  end
endmodule

// Data Level Modelling
// module mux4(a, b, c, o, s);
//     input a, b, c, s;
//     output o;
//     assign o = (s & a) | (~s & b);
//     initial begin
//         $display("THIS IS DATA LEVEL MODELLING");
//     end
// endmodule

// Behavioral Level Modelling
// module mux4(a, b, c, o, s);
//     input a, b, c;
//     input s;
//     output reg o;
//     always @(*) begin : MUX_BLOCK
//         if (s == 2'b00) begin
//             o <= a;
//         end else if (s == 2'b01) begin
//             o <= b;
//         end else if (s == 2'b10) begin
//             o <= c;
//         end else begin
//             o <= s;
//         end
//     end
//     initial begin
//         $display("THIS IS BEHAVIORAL LEVEL MODELLING");
//     end
// endmodule