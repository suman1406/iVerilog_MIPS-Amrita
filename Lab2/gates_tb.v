module tb_gates;
    reg A, B;
    wire Y_or, Y_not, Y_nor, Y_nand, Y_xor, Y_xnor;

    // Instantiate gates
    OR_gate or_gate1(.A(A), .B(B), .Y(Y_or));
    NOT_gate not_gate1(.A(A), .Y(Y_not));
    NOR_gate nor_gate1(.A(A), .B(B), .Y(Y_nor));
    NAND_gate nand_gate1(.A(A), .B(B), .Y(Y_nand));
    XOR_gate xor_gate1(.A(A), .B(B), .Y(Y_xor));
    XNOR_gate xnor_gate1(.A(A), .B(B), .Y(Y_xnor));

    // Apply test vectors
    initial begin
        $monitor("A=%b, B=%b, OR=%b, NOT=%b, NOR=%b, NAND=%b, XOR=%b, XNOR=%b", 
                A, B, Y_or, Y_not, Y_nor, Y_nand, Y_xor, Y_xnor);
        
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;
        
        $finish;
    end
endmodule
