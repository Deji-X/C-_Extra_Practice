/*  WHAT ARE DELAYS

In verilog, delays use # followed by time units to control when statemets execute:

#10 a = 1;    // Wait 10 time units, then assign

Delays are cumulative: each delay adds to the current time: 

initial begin
  a = 0;      // Time 0
  #10 a = 1;  // Time 10
  #5  a = 1;  // Time 15
end

Use in 'always' blocks to generate clocks:

always #5 clk = ~clk;  // Toggle every 5 units.

Note: Delays are for simulation only, not synthesizable.

*/
