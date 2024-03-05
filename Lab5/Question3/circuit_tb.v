module circuit_tB;
    reg A, B, Cin;
    wire s, Cout;
    circuit cc (A, B, Cin, s, Cout);
    initial begin
        $monitor("A=%B, B=%B, Cin=%B, s=%B, Cout=%B", A, B, Cin, s, Cout);
        A = 0; B = 0; Cin = 0;
        #5
        A = 0; B = 0; Cin = 1;
        #5
        A = 0; B = 1; Cin = 0;
        #5
        A = 0; B = 1; Cin = 1;
        #5
        A = 1; B = 0; Cin = 0;
        #5
        A = 1; B = 0; Cin = 1;
        #5
        A = 1; B = 1; Cin = 0;
        #5
        A = 1; B = 1; Cin = 1;
    end
endmodule