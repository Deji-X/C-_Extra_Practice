/*  Shift Operators
Shift operators move bits left or right within a vector:

Operator	      Description
<<	            Logical left shift (fills with zeros)
>>	            Logical right shift (fills with zeros)
<<<	            Arithmetic left shift (same as logical)
>>>	            Arithmetic right shift (preserves sign bit)


8'b00001010 << 2  // = 8'b00101000
8'b00001010 >> 2  // = 8'b00000010

reg signed [7:0] a;
a = -5;           // 11111011
a >>> 2           // = 11111110 (sign preserved)
Common uses:

x << n    // Multiply by 2^n
x >> n    // Divide by 2^n

// Extract bits 5-2 from an 8-bit value
field = (data >> 2) & 4'b1111;

*/

module shift_challenge;
  reg [7:0] a;
  reg signed [7:0] b;
  reg [7:0] left_result, right_result;
  reg signed [7:0] arith_result;

  initial begin
    a = 8'b00010001;
    b = -8'sd16;
