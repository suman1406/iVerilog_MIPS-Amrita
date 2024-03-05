module oneBit(input wire A, input wire B, output wire less, output wire equal, output wire greater);
    assign less = A < B;
    assign equal = A == B;
    assign greater = A > B;
endmodule

module twoBit(input [1:0] A, input [1:0] B, output wire less, output wire equal, output wire greater);
    assign less = A < B;
    assign equal = A == B;
    assign greater = A > B;
endmodule