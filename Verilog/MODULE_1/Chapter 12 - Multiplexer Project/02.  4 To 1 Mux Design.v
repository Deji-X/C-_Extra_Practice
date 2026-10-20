/*  4 TO 1 MUX DESIGN

The 4-to-1 multiplexer has four data inputs (in0, in1, in2, in3),
two select bits (sel[1:0]), and one output (out).
The two select bits choose which input passes to the output:

When sel = 2'b00, output is in0
When sel = 2'b01, output is in1
When sel = 2'b10, output is in2
When sel = 2'b11, output is in3
You will build this multiplexer in two ways: first using if-else statements,
then in the next lesson using a case statement.
Both methods work, but case is often cleaner when you have many choices.

A 4-to-1 multiplexer selects one of four inputs and
passes it to the output based on a 2-bit select signal.

Truth Table
sel1 | sel0  | out
---------------------
0	   |  0	   |out = in0
0	   |  1	   |out = in1
1	   |  0  	 |out = in2
1	   |  1	   |out = in3

When sel is 00, output follows in0. When sel is 01, output follows in1.
When sel is 10, output follows in2. When sel is 11, output follows in3.

What to do:

1. Create a module named mux4to1
2. Add input in0 (1 bit)
3. Add input in1 (1 bit)
4. Add input in2 (1 bit)
5. Add input in3 (1 bit)
6. Add input sel (2 bits)
7. Add output out (1 bit, type reg)
8. Add an always @(*) block
9. Inside, add an if-else statement checking sel:
If sel == 2'b00, set out = in0
Else if sel == 2'b01, set out = in1
Else if sel == 2'b10, set out = in2
Else, set out = in3
10. Close with endmodule

*/
module mux4to1(
  input in0, in1, in2, in3,
  input [1:0] sel, 
  output reg out
);

  always @(*) begin
    if (sel == 2'b00)
      out = in0;
    else if (sel == 2'b01)
      out = in1;
    else if (sel == 2'b10)
      out = in2;
    else
      out = in3;
  end

endmodule
