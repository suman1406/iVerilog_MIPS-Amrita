module andgate_tb;

// Drivers are required to interact with the ports and describe its logical working
// Two types of drivers
// 1. can store a value (for example, flip-flop) - REG
// 2. cannot store a value, but connects two points - WIRE

reg t_a, t_b;
wire t_y;


andgate my_gate(t_a, t_b, t_y);

initial
begin
	//$monitor(t_a, t_b, t_y);
	$monitor("A = %b B= %b Y=%b", t_a, t_b, t_y);

	t_a=1'b0;
	t_b=1'b0;
	#10
	t_a=1'b0;
	t_b=1'b1;
	#10
	t_a=1'b1;
	t_b=1'b0;
	#10
	t_a=1'b1;
	t_b=1'b1;
end
endmodule

