/*
Recap - Simple Math
Complete the code by writing the correct arithmetic and comparison expressions.

What to do:

Calculate a + b and store in add
Calculate a - b and store in sub
Calculate a * b and store in mul
Calculate a / b and store in div
Calculate a % b and store in mod
Check if a is greater than b and store in gt
Check if a equals b and store in eq


*/
module simple_math_challenge;
  reg [3:0] a, b;
  reg [7:0] add, sub, mul, div, mod;
  reg gt, eq;

  initial begin
    a = 4'd13;
    b = 4'd4;

    add = a + b;
    sub = a - b;
    mul = a * b;
    div = a / b;
    mod = a % b;
    gt  = a > b;
    eq = a == b;

    $display("13 + 4  =  %d", add);
    $display("13 - 4  =  %d", sub);
    $display("13 * 4  =  %d", mul);
    $display("13 / 4  =  %d", div);
    $display("13 % 4  =  %d", mod);
    $display("13 > 4  =  %d", gt);
    $display("13 == 4 =  %d", eq);
    $finish
  end
endmodule
