/* Concatenation Operator

The concatenation operator { } joins bits together into a wider vector.
Result width = sum of all individual widths.

// Basic: {value1, value2, ...}
reg [3:0] high, low;
reg [7:0] word;
word = {high, low};  // high = upper bits, low = lower bits

// With constants
data = {4'b1010, 4'b0000};  // 8'b10100000

Replication {n{value}} repeats a value n times:

repeated = {3{4'b1010}};              // 12'b101010101010
signed_8bit = {{4{sign_bit}}, val_4b};  // sign extension

Key rules:

Order matters: {a, b} ≠ {b, a}
All parts must have fixed, known widths
Can be used on both sides of assignments

*/

module
endmodule
