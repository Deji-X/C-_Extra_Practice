/*    WHAT IS A TESTBENCH

A testbench is a Verilog module used to test another module (the DUT - Design Under Test).
It has no ports and is simulation-only.

module testbench;      //NO PORTS!!

  reg a, b;            // reg for inputs (signals that change)
  wire c;              // wire for DUT outputs

  and_gate dut (       // Instantiate DUT
    .a(a),
    .b(b),
    .c(c)
  );

  initial begin        // Apply test values
    a = 0; b = 0; #10;
    a = 1; b = 1; #10;
    $finish;           // End simulation
  end
endmodule

1. Use 'reg' for signals driven in 'initial' blocks (inputs to DUT).
2. Use 'wire' for signals driven coming from the DUT (outputs).
3. '$finish' ends the simulation.
*/
