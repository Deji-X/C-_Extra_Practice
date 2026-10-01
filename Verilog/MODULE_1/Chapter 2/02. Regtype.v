/*Reg Type
reg stores a value and holds it until changed. Used inside always or initial blocks.

reg x;       // Single-bit reg
reg y, z;    // Multiple regs
initial begin
  x = 0;  // assign value
  x = 1;  // update value
end
*/
/*
What to do:

Add a reg called count 
*/
module counter(
  input clk,
  input reset,
  output out // wire by default (remove reg)
);

  //Declare reg count here

  reg count;

endmodule
