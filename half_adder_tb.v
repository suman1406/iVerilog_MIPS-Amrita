module half_adder_tb;
    reg a, b;
    wire s, c;
    half_adder ha(a, b, s, c);
    initial begin
        $monitor("a=%b, b=%b, s=%b, c=%b", a, b, s, c);
        a = 0; b = 0;
        #10;
        a = 0; b = 1;
        #10;
        a = 1; b = 0;
        #10;
        a = 1; b = 1;
        #10;
        $finish;
    end
endmodule