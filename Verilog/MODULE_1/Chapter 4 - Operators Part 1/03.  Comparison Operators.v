/* COMPATISON OPERATORS
Comparison operators in Verilog two values and return 1 (true) or 0 (false)
Operator	Meaning
==	      Equal to
!=	      Not equal to
>	        Greater than
<	        Less than
>=	      Greater than or equal
<=	      Less than or equal

Comparisons are commonly used in 'if' statements:
if (count == 10)
  $display("Reached maximum");

if (value > treshold)
  $display("Value is too high");


Note: Results are 1-bit values. 
Using '==' or '!=' with signals containing X or Z will return X.
*/
module comparison_challenge;
  reg [3:0] a, b;
  reg eq, gt, le;

  initial begin
    a = 4'd7;
    b = 4'd7;

    eq = a == b;
    gt =  a > b;
    le = a <= b;

    $display("a = %d, b = %d", a, b);
    $display("a == b : %d", eq);
    $display("a > b  : %d", gt);
    $display("a < b  : %d", le);
    $finish;
  end
endmodule
