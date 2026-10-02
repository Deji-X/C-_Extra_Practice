/*
Binary uses only 0 and 1. Each digit is a bit.

Write binary in Verilog with the 'b prefix: the number before it specifies the bit width:

4'b1010    // 4-bit binary = decimal 10
8'b11110000 // 8-bit binary = decimal 240

Display formats: %b (binary), %d (decimal), %h (hex).

Decimal To Binary: Divide by 2 repeatedly, read remainders bottom to top.
// 9 ÷ 2 → 4 r1 → 2 r0 → 1 r0 → 0 r1  ⟹  1001
// 9 = 4'b1001
*/
module binary_challenge;
  reg [3:0] a, b;

  initial begin
    // Write binary for decimal 5 (4 bits)
    a [3:0] = 4'b0101;

    // Write binary for decimal 14 (4 bits)
    b [3:0] = 4'b1110;

    $display("5 = %b", a);
    $display("14 = %b", b);
    $finish;
  end
endmodule
