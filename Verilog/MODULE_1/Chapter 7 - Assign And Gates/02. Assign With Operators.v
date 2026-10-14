/*  ASSIGN WITH OPERATORS

The  'assign' statement supports various operators for combinational logic:
assign wire_name = expression;

Operator types:
Bitwise: '&', '|', '^', '~'
Arithmetic: '+'. '-'. '*', '/'
Logical: '&&', '||', '!'
Comparison: '>', '<', '==', '!='
Shift: '<<', '>>'
Conditional: '?:'
Concatenation: '{}'

assign and_out = a & b;
assign sum_out = a + b;
assign is_equal = (a == b);
assign mux_out = sel ? a : b;
assign bus = {high, low};
assign parity = ^data;        // Reduction XOR

Use parentheses to clarify precedence:
assign out = (a & b) | c;
*/
