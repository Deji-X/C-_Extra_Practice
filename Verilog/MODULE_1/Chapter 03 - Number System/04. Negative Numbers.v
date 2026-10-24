/* NEGATIVE NUMBERS
In verilog, negative numbers use two's complement format. The MSB indicates sign:
0 = positive, 1 = negative.

Calculating Two's Complement:
1. Write positive number in binary
2. Flip all bits
3. Add 1

Example: -5 in 4 bits -> 0101 -> 1010 -> 1011 = 4'b1011
Declare signals as 'signed' to handle negative numbers:
reg signed [3:0] negative; // Can store -8 to 7
reg [3:0] positive;        // Can store 0 to 15

Assign negative values directly or via two's complement binary:
reg signed [3:0] a;
a = -5;        // Verilog automatically uses two's complement
a = 4'b1011;   // Equivalent: -5 in 4-bit two's complement

Ranhe for N -bit signed:
-2^(N-1) to 2^(N-1)-1 
Example: 4 bits:      8 bits:
-2^(3) to 2^(3)-1     -2^(7) to 2^(7)-1
-8 to 7               -128 to 127
*/

module negative_challenge;
  reg signed [3:0] a, b, c;

  initial begin
    a = 4'b1101;
    b = 4'b1000;
    c = 4'b1111;

    $display("a = %d", a);
    $display("b = %d", b);
    $display("c = %d", c);
    $finish;
  end
endmodule
