/*    DUMPFILE AND DUMPVARS
Use '$dumpfile' and '$dumpvars' inside an 'initial' block to generate
a VCD(Value Change Dump) waveform file for viewing in tools like GTKWave:

initial begin
  $dumpfile("dump.vcd");      // creates the VCD file
  $dumpvars(0, testbench);    // dumps all signals in testbench and sub-modules.
end

$dumpvars(level, module_name) levels:
1. 0: all signals in module and all sub-modules.
2. 1: only signals in the specified module (no sub-modules).
*/

module and_gate (
  input a, b,
  output c
);

  assign c = a & b;

endmodule

module testbench;
  reg a, b;
  wire c;

  and_gate dut (
    .a(a),
    .b(b),
    .c(c)
  );

  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, testbench);

  end

  if ($test$plusargs("vcd")) begin
    $display("VCD file created successfully");
  end

  $display("Simulation running...");

  a
