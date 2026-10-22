/*    CREATING STIMULUS

Stimulus is the input values applied to a DUT in a testbench to verify correct behavior.

METHODS TO CREATE STIMULUS

SEQUENTIAL ASSIGNMENTS: simplest approach:
initia begin
  a = 0; b = 0; #10;
  a = 0; b = 1; #10;
  $finish;
end

FOR LOOP: test all input combinations:

integer i;
initial begin
  for (i = 0; i < 4; i = i + 1) begin
    {a, b} = i; #10;
  end
  $finish;
end

REPEAT LOOP: repeat stimulus N times:

repeat (10) begin
  #10 a = ~a;
end

FOREVER LOOP: continuous signals like clocks:

initial begin
  clk = 0;
  forever #5 clk = ~clk;
end

KEY RULES
1. Use 'reg' for stimulus signals (they change over time).
2. Add delays (e.g #10) between assignments to allow Design Under Test to respond.
3. End simualtion with '$finish;'
*/

