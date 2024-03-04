// 2x4 Binary Decoder

// Gate Level Modelling
// module decoder2_4 (input A, output Y);
//     wire w1, w2;
//     not n1 (w1, A[0]);
//     not n2 (w2, A[1]);
//     and a1 (Y[0], w1, w2);
//     and a2 (Y[1], w1, A[1]);
//     and a3 (Y[2], A[0], w2);
//     and a4 (Y[3], A[0], A[1]);
// endmodule

module decoder2_4 (
    input wire A,
    output wire Y0, Y1, Y2, Y3
);

assign Y0 = (A == 2'b00) ? 1'b1 : 1'b0;
assign Y1 = (A == 2'b01) ? 1'b1 : 1'b0;
assign Y2 = (A == 2'b10) ? 1'b1 : 1'b0;
assign Y3 = (A == 2'b11) ? 1'b1 : 1'b0;

endmodule
