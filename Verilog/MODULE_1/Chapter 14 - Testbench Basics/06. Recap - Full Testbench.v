/*
This challenge tests everything you have learned about testbenches:
stimulus, display, monitor, dumpfile, dumpvars, and system tasks.
You are given an XOR gate module to test.

What to do:

Create a complete testbench that:

Declares signals (reg for inputs, wire for output)
Instantiates the XOR gate with name dut
Creates a waveform file named xor_waveform.vcd
Dumps all signals in the testbench
Prints a header: "Testing XOR Gate"
Uses $monitor to track time, x, y, and z
Tests all four input combinations (00, 01, 10, 11) with #10 delay between each
Prints "Test complete" at the end
Ends the simulation with $finish
*/

module xor_gate(
  input x, y,
  output z
);

  assign z = x ^ y;

endmodule

module testbench;
  reg x, y;
  wire z;

  xor_gate dut (
    .x(x),
    .y(y),
    .z(z)
  );

  initial begin
    $dumpfile("xor_waveform.vcd");
    $dumpvars(0, testbench);

  
    $display("Testing XOR Gate");
    $monitor("Time %0t: x=%b, y=%b, z=%b", $time, x, y, z);

    x = 0; y = 0; #10;
    x = 0; y = 1; #10;
    x = 1; y = 0; #10;
    x = 1; y = 1; #10;

    $display("Test complete");

    $finish;
  end

endmodule
  
