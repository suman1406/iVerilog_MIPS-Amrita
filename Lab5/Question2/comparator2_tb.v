module comparator2_tb;
    reg [1:0] A, B;
    wire less, equal, greater;

    twoBit one (A, B, less, equal, greater);

    initial begin
        $monitor("A=%b, B=%b, less=%b, equal=%b, greater=%b", A, B, less, equal, greater);
        // two bits
        A = 2'b00; B = 2'b00; #10
        A = 2'b00; B = 2'b01; #10
        A = 2'b00; B = 2'b10; #10
        A = 2'b00; B = 2'b11; #10
        A = 2'b01; B = 2'b00; #10
        A = 2'b01; B = 2'b01; #10
        A = 2'b01; B = 2'b10; #10
        A = 2'b01; B = 2'b11; #10
        A = 2'b10; B = 2'b00; #10
        A = 2'b10; B = 2'b01; #10
        A = 2'b10; B = 2'b10; #10
        A = 2'b10; B = 2'b11; #10
        A = 2'b11; B = 2'b00; #10
        A = 2'b11; B = 2'b01; #10
        A = 2'b11; B = 2'b10; #10
        A = 2'b11; B = 2'b11; #10

        $finish;
    end
endmodule