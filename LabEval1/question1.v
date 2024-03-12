module seg(input a3, input a2, input a1, input a0, output B);
  wire w1;
  
  assign w1 = (a1 & a0) | (~a1 & ~a0);
  assign B = (w1 | ~a2);

endmodule
