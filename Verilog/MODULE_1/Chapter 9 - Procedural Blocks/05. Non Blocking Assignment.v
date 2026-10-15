/*    NON BLOCKING ASSIGNMENT

Non-blocking assignment (<=) executes all statements in parallel:
using old values, updating at the end of the time step.

// All use OLD values of a and b
a <= 5;
b <= a + 2;  // uses old a
c <= b * 3;  // uses old b
Use <= for sequential logic (flip-flops, registers, counters)
inside clocked always blocks:

always @(posedge clk) begin
  q     <= d;           // non-blocking
  count <= count + 1;   // non-blocking
end
Assignment	| Use for	                              | Executes
----------------------------------------------------------------------
<=	        |  Sequential logic (posedge clk)	      |  In parallel
=	          |  Combinational logic (always @(*))	  |  Step by step


*/
