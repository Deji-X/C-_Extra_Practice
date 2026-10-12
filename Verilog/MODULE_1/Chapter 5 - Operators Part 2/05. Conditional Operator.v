/*
Conditional Operator

The conditional (ternary) operator ? : selects between two values based on a condition:

condition ? value_if_true : value_if_false
Examples:

max      = (a > b) ? a : b;                  // larger of a and b
data_out = (enable) ? data_in : 8'b0;        // output data if enabled, else 0
out      = (invert) ? ~in : in;              // conditionally invert signal
Nested conditional operators:

result = (a > b) ? a : (b > c) ? b : c;     // largest of three values
Notes:

Condition must evaluate to 0 or 1
Both value options must have the same bit width
Usable in assign, always, and initial blocks
*/
module
endmodule
