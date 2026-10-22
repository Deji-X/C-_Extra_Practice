/*    DISPLAY AND MONITOR

'$display' prints once when executed;
'$monitor' prints automatically whenever any of its variable change.

$display("message", variables);
$display("message", variables);

Example:

initial begin
  $display("Simulation started");
  $monitor("Time %0t: a=%b, b=%b", $time, a, b);
  #10 a = 1;
  #10 b = 1;
end

Common Format Specifiers:
1. %b: Binary.
2. %d: Decimal.
3. %h: Hexadecimal.
4. %t / %0t: Time(with/without padding).
5. %s: String.

KEY RULES:
1. Only one $monitor is active at a time: the last one overrides previous ones.
2. Use $finish to tstop the simulation.
*/

module or_gate (
  input x,
  input y,
  output z
);
  assign z = x | y;
endmodule



module testbench;

  reg x, y;
  wire z;

  or_gate dut (
    .x(x),
    .y(y),
    .z(z)
  );

  initial begin
    $display("Testing OR Gate");

    // TODO: Add $monitor to track time, x, y, z
    // Format: "Time %0t: x=%b, y=%b, z=%b"
    $monitor ("Time %0t: x=%b, y=%b, z=%b", $time, x, y, z);
    
    
    // Apply stimulus
    x = 0; y = 0; #10; 
    x = 0; y = 1; #10;
    x = 1; y = 0; #10;
    x = 1; y = 1; #10;
    
    // TODO: Add $display "Test complete"
    $display("Test complete");
    
    
    $finish;
    
  end

endmodule
