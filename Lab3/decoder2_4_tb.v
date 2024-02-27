// Testbench
module decoder2_4_tb;

    reg A;
    wire Y;

    decoder2_4 uut(A, Y);

    initial begin
        $monitor("A = %b; Y = %b", A, Y);
        A = 0;
        #10
        A = 0;
        #10
        A = 1;
        #10
        A = 1;
        #10
        $finish;
    end
endmodule