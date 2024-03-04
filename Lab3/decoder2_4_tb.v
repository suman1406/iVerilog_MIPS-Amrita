module decoder2_4_tb;

  reg A;
  
  // Outputs

  // Instantiate the decoder
  decoder2_4 uut (
    A,
    Y0,
    Y1,
    Y2,
    Y3
  );

  // Stimulus
  integer i; // Declare the loop variable outside the initial block

  initial begin
    // Test all possible input combinations
    for (i = 0; i < 4; i = i + 1) begin
      A = i;
      #10;  // Wait for a few time units to observe the outputs
      // Display the results
      $display("Input: %b, Outputs: Y0=%b, Y1=%b, Y2=%b, Y3=%b", A, Y0, Y1, Y2, Y3);
    end

    // Stop simulation
    $finish;
  end

endmodule
