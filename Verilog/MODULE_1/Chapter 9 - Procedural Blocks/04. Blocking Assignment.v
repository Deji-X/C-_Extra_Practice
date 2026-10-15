/*  BLOCKING ASSIGNMENT

Blocking Assignment (=) executes sequentially: each statement completes before the next
begins. Used for combinational logic inside always @(*) blocks.

always @(*) begin
  temp = a & b;    // Step 1
  out = temp | c;  // Step 2 (uses updated temp)
end

	        | Blocking (=)	        	| Non-blocking (<=)
-----------------------------------------------------------------
Execution	|  One after another	  	|  All at once
Use for	  	|  Combinational logic		| Sequential logic (flip-flops)

*/
