/*    CHALLENGE

Easy
This challenge tests your understanding of delays, gate delays,
assignment delays, timescale, and clock generation.

WHAT TO DO:

1. Add a timescale directive with 1ns / 1ps
2. Generate a clock that toggles every 5 time units
3. Add an AND gate with a 3 time unit gate delay
4. Use an assignment delay to assign a to b after 2 time units (read a immediately)

*/

`timescale 1ns / 1ps

module timing_challenge;
  reg clk;
  reg a, b;
  wire out;

  initial begin
    clk = 0;
  end

  // Clock toggles every 5 time units
  always #5 clk = ~clk;

  // AND gate with 3 time unit propagation delay
  assign #3 out = a & b;

  initial begin
    $monitor("Time %0t: clk=%b, a=%b, b=%b, out=%b",
             $time, clk, a, b, out);

    a = 1;

    // Read a now, assign its value to b after 2 time units
    b = #2 a;

    #20;
    $finish;
  end
endmodule
