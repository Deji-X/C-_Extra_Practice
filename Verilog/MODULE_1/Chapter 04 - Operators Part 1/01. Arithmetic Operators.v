/*  ARITHMETIC OPERATORS

Verilog Arithmetic Operations: +, -, *, /

reg [3:0] a, b;
reg [7:0] add, sub, mul, div;

add = a + b;
sub = a - b;
mul = a * b;
div = a / b;    // Integer division (no fractions)

Note: Ensure the result register is wided enough, especially for multiplication.
*/
module arithmetic_challenge;
  reg [3:0] a, b;
  reg [7:0] add, sub, mul, div;

  initial begin
    a = 4'd12;
    b = 4'd5;

    add = a + b;
    sub = a - b;
    mul = a * b;
    div = a / b;

    $display("12 + 5 = %d", add);
    $display("12 - 5 = %d", sub);
    $display("12 * 5 = %d", mul);
    $display("12 / 5 = %d", div);
    $finish;
  end
endmodule

    
