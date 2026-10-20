/* USING CASE STATEMENT

Build a 4-to-1 multiplexer using a 'case' statement instead of 'if-else'.

TRUTH TABLE

sel | out
----------------
00  | out = in0
01  | out = in1
10  | out = in2
11  | out = in3

What To Do:
1. Create a module named mux4to1_case
2. Add inputs in0, in1, in2, in3 (1 bit each)
3. Add input sel (2 bits)
4. Add output out (1 bit, type reg)
5. Add an always @(*) block
6. Inside, add a case (sel) statement
7. Add cases for 2'b00, 2'b01, 2'b10, 2'b11
8. Add a default case
9. Close with endcase and endmodule
*/

module mux4to1_case(
  input in0, in1, in2, in3,
  input [1:0] sel,
  output reg out
);

  always @(*) begin
    case (sel)
      2'b00: out = in0;
      2'b01: out = in1;
      2'b10: out = in2;
      2'b11: out = in3;
      default: out = 1'b0;
    endcase
  end

endmodule
