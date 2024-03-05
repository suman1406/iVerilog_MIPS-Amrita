module full_adder(input a, b, cin, output sum, cout);
  wire h1_sum, h1_carry, h2_carry;

  half_adder ha1 (a, b, h1_sum, h1_carry);

  half_adder ha2 (h1_sum, cin, sum, h2_carry);

  assign cout = h1_carry | h2_carry;
endmodule

module half_adder(input a, b, output sum, carry);
  assign sum = a ^ b;
  assign carry = a & b;
endmodule
