module full_adder(a, b, cin, s, cout);
    input a, b, cin;
    output s, cout;
    wire s, c1;
    assign s=a^b^cin;

    // METHOD 1
    // assign c1=(a&b)|(b&cin)|(a&cin);
    // assign cout=c1;

    // METHOD 2
    assign carry1 = a & b;
    assign carry2 = (a ^ b) & cin;

    assign cout = carry1 | carry2;
endmodule;