/* MODULO OPERATOR

The modulo operator (%) returns the 'remainder' after division:

10 % 3 -> 1 (10/3 = 3 remainder 1)
8 % 2 --> 0  (no remainder)

reault = 10 % 3;    // 1

Common uses:
// Check even/odd
if (number % 2 == 0) $display ("Even");

// Wrap counter (0-9)
count = (count + 1) % 10;

// Get last digit
last_digit = value % 10; // 123 % 10 = 3

*/
module module_challenge;
  reg [7:0] mod1, mod2, mod3;

  initial begin
    mod1 = 17 % 5;
    mod2 = 22 % 7;
    mod3 = 14 % 4;

    $display("17 %% 5 = %d", mod1);
    $display("22 %% 7 = %d", mod2);
    $display("14 %% 4 = %d", mod3);
    $finish;
  end
endmodule
