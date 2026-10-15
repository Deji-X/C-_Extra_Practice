/*  ALWAYS BLOCK
The 'always' block runs continuously and is used to describe hardware like flip-flops
and counters.

always @ (sensitivity_list) begin
  // Code that runs repeatedly
end

@(posedge clk) triggers on the risisng clock edge; @(a or b) triggers when any listed
signal changes.

// Counter: increments on every rising clock edge
always @(posedge clk) count = count + 1;

// Combinational: runs when a or b changes
always @ (a or b) begin
  out = a & b;
end

Note: outputs driven by 'always' blocks must be declared as 'reg'
*/
