module seg_tb;
  reg a, b, c, d;
  wire B;

  // Instantiate your module (assuming "seg" is a 4-bit display module)
  seg my_segment(a, b, c, d, B);

  initial begin
    $monitor("A3 = %b, A2 = %b, A1 = %b, A0 = %b, B = %b", a, b, c, d, B);
    a = 0; b = 0; c = 0; d = 0;
    #10;
    a = 0; b = 0; c = 0; d = 1;
    #10;
    a = 0; b = 0; c = 1; d = 0;
    #10;
    a = 0; b = 0; c = 1; d = 1;
    #10;
    a = 0; b = 1; c = 0; d = 0;
    #10;
    a = 0; b = 1; c = 0; d = 1;
    #10;
    a = 0; b = 1; c = 1; d = 0;
    #10;
    a = 0; b = 1; c = 1; d = 1;
    #10
    a = 1; b = 1; c = 1; d = 1;
    #10;
    $finish;
  end
endmodule
