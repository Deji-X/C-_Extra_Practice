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
