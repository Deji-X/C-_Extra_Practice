/*Integer And Real
integer: 32-bit sogned variable for counting/calculations (testbenches, loops):

integer i;
integer count;

initial begin
  i = 0;
  i = i + 1;
  i = -5; // can store negatives
end

real: floating-point variable for fracional values (testbenches only, not sunthesizable)

real pi;

initial begin
  pi = 3.14159;
  pi = 22.0 / 7.0;
  $display("pi = %f", pi);
end

Both 'integer' and 'real' are used in testbenches only. 
for synthesizable hardware, use 'reg' and 'wire'.
*/
/* Integer And Real

Complete the code to make the testbench work
What to do:
  1. Decalre an integer called i (for loop counter)
  2. Declare a real called value (for calculation)
*/

module test;

  // Declare an integer called i
  integer i;

  // Declare a real called value
  real value;

  initial begin
    i = 7;
    value = i * 0.5;
    $display ("i = %0d, value = $f", i , value);

    $finish;
  end
endmodule
