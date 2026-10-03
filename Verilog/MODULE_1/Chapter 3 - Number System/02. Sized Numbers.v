/*
SIZED NUMBERS
A sized number in verilog follows the format: [bits]' [format][value]

BITS: number of bits.
': required apostrophe separator.
FORMAT: b (binary), d (decimal), h (hex), o (octal).
VALUE: the actual number.

reg [7:0] data';

data = 8'b10101010;  // 8 bits, binary.
data = 8'd170;       // 8 bits, decimal.
data = 8'hAA;        // 8 bits, hec (all three are equal)

Without a size, VERILOG defaults to 32 bits, which can cause unexpected behavior.
Left bits are zero-padded when the value is smaller than the declared size:

reg [7:0] data;
data = 4'b1010;  // Becomes 8'b00001010

*/

module sized_challenge;
  reg [7:0] a;
  reg [3:0] b;
  reg [15:0] c;

  initial begin
    a = 8'b10101010;
    b = 4'b1100;
    c = 16'hFF;

    $display("a = %b", a);
    $display("b = %b", b);
    $display("c = %h", c);

    $finish;
  end
endmodule
