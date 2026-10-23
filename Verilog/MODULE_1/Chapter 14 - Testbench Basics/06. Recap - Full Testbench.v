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
