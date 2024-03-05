module comparator1_tb;
    reg A, B;
    output less, equal, greater;

    oneBit one (A, B, less, equal, greater);

    initial begin
        $monitor("A=%b, B=%b, less=%b, equal=%b, greater=%b", A, B, less, equal, greater);
        // one bit
        {A,B} = 2'b00; #10;
        {A,B} = 2'b01; #10;
        {A,B} = 2'b10; #10;
        {A,B} = 2'b11;
    end
endmodule