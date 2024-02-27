module mux2_tb;
    reg a, b, s;
    wire o;
    mux2to1 m1(a, b, o, s);
    initial begin
        $monitor("s = %b; a = %b; b = %b; o = %b", a, b, s, o);
        s = 0; b = 0; a = 0;
        #10 
        s = 1; b = 0; a = 0;
        #10 
        s = 0; b = 1; a = 0;
        #10 
        s = 1; b = 1; a = 0;
        #10 
        s = 0; b = 0; a = 1;
        #10 
        s = 1; b = 0; a = 1;
        #10 
        s = 0; b = 1; a = 1;
        #10 
        a = 1; b = 1; s = 1;
        #10
        $finish;
    end
endmodule