/*CASE STATEMENT

The case statement selects between multiple actions based on a single expression: a cleaner alternative to chained if-else.

case (expression)
  value1: statement1;
  value2: statement2;
  default: default_statement;
endcase
For multiple statements per branch, use begin/end:

case (sel)
  2'b00: out = a;
  2'b01: begin
    out = b;
    flag = 1;
  end
  default: out = 0;
endcase
Always include default in combinational logic. Without it, unmatched values (e.g., X, Z) cause the output to retain its previous value, creating an unintended latch.

Key rules:

All case values must be unique
Values must match the expression's bit width (e.g., 2'b01, not 1'b1)
Use case for one variable vs. many values; use if-else for complex/range conditions

*/
