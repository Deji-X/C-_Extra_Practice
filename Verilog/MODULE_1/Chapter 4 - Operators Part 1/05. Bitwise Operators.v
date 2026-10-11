/*
Bitwise Operators



Bitwise operators work on each individual bit of a number:

Operator	    Operation	    Output bit is 1 when...
&	              AND	        Both input bits are 1
|	              OR	        At least one input bit is 1
^	              XOR	        Input bits are different
~	              NOT	        Flips all bits (unary)

// a = 1010, b = 1100
a & b = 1000   // AND
a | b = 1110   // OR
a ^ b = 0110   // XOR
~a    = 0101   // NOT
*/
module bitwise_challenge;
  reg [3:0] a, b;
  reg [3:0] and_res, or_res, xor_res, not_res;

  initial begin
    a = 4'b1101;
    b = 4'b1011;

    and_res = a & b;
    or_res  = a | b;
    xor_res = a ^ b;
    not_res =    ~a;

    $display("a = %b", a);
    $display("b = %b", b);
    $display("a & b = %b", and_res);
    $display("a | b = %b", or_res);
    $display("a ^ b = %b", xor_res);
    $display("~a    = %b", not_res);
    $finish
  end
endmodule
