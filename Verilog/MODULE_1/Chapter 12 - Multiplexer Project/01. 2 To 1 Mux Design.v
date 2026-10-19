/* 2 TO MUX DESIGN

A multiplexer (MUX) is a digital circuit that selects one of several inputs and
forwards it to a single output based on a select signal.
Think of it like a data selector. You have multiple inputs coming in, and you choose which
oe goes to the output.

In this project, you will build multiplexers of different sizes using 'if-else' and 'case'
statements.

2-TO-1 MULTIPLEXER

The 2-to-1 multiplexer is the simplest form. It has two data inputs(in0 and in1),
one select input (sel), and one output (out).
When 'sel' is 0, the output follows in0.
When 'sel' is 1, the output follows in1.
You will implement this using an 'if-else' statement inside an 'always @(*)' block.

Example: if in0 = 0, in1 = 1, and sel = 1, then out = 1.

A 2-to-1 multiplexer selects one of two inputs and passes it to the output based on
a select signal.

TRUTH TABLE

|sel  |  out     |
------------------
| 0   | out = in0|
| 1   | out = in1|

When sel is 0, the output follows in0.
When sel is 1, the output follows in1.

What to do:
1. Create a module named mux2to1
2. Add input in0 (1 bit)
3. Add input in1 (1 bit)
4. Add input sel (1 bit)
5. Add output out (1 bit, type reg)
6. Add an always @(*) block
7. Inside, add an if-else statement:
      If sel == 0, set out = in0
      Else, set out = in1
8. Close with endmodule
*/

module mux2to1(
  input      in0;
  input      in1;
  input      sel;
  output reg out
);

