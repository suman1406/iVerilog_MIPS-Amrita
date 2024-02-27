module mux4_tb;

  reg a, b, c;  // Use reg for all inputs now
  reg s;
  wire o;

  mux4 uut(a, b, c, o, s);

  initial begin
    $monitor("s = %b; c = %b; b = %b; a = %b; o = %b", s, c, b, a, o);
        s = 0; c = 0; b = 0; a = 0;
        #10 
        s = 0; c = 0; b = 0; a = 1;
        #10 
        s = 0; c = 0; b = 1; a = 0;
        #10 
        s = 0; c = 0; b = 1; a = 1;
        #10 
        s = 0; c = 1; b = 0; a = 0;
        #10 
        s = 0; c = 1; b = 0; a = 1;
        #10 
        s = 0; c = 1; b = 1; a = 0;
        #10 
        s = 0; c = 1; b = 1; a = 1;
        #10
        s = 1; c = 0; b = 0; a = 0;
        #10 
        s = 1; c = 0; b = 0; a = 1;
        #10 
        s = 1; c = 0; b = 1; a = 0;
        #10 
        s = 1; c = 0; b = 1; a = 1;
        #10 
        s = 1; c = 1; b = 0; a = 0;
        #10 
        s = 1; c = 1; b = 0; a = 1;
        #10 
        s = 1; c = 1; b = 1; a = 0;
        #10 
        s = 1; c = 1; b = 1; a = 1;
        #10
        $finish;
    end
endmodule
