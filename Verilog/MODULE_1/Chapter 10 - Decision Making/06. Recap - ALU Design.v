/*  RECAP - ALU DESIGN
An ALU (Arithmetic Logic Unit) is a digital circuit that takes two inputs, 
performs an operation on them, and produces one output.
It performs arithmetic and logic operations on two inputs based on a select signal.
The select signal chooses one operation to execute.

How it works
--------------------------------
Select	| Operation	  | Output  
--------------------------------
2'b00	  |  Addition	    |  a + b
2'b01	  |  Subtraction	|  a - b
2'b10	  |  Bitwise AND	|  a & b
2'b11	  |  Bitwise OR	  |  a | b
--------------------------------
Build a simple ALU using a case statement.
What to do:

Create a module named alu
Add inputs: a (4-bit), b (4-bit), select (2-bit)
Add output: result (4-bit, reg type)
Add an always @(*) block
Inside, add a case (select) statement
Add four cases for 2'b00, 2'b01, 2'b10, 2'b11
Add a default case to set result = 0
Close with endcase and endmodule
*/

module alu(
  input      [3:0] a, b,
  input      [1:0] select,
  output reg [3:0] result
);

  always @(*) begin
    case (select)
      2'b00:   result = a + b;
      2'b01:   result = a - b;
      2'b10:   result = a & b;
      2'b11:   result = a | b;
      default: result = 0;
      endcase
      end
endmodule
