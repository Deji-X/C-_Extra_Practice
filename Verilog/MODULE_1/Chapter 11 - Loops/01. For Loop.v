/*  FOR LOOP
The for loop in Verilog repeats a block of code a specific number of times:

for (initialization; condition; increment) begin
  // Code to repeat
end
Example printing 0 to 4:

integer i;

for (i = 0; i < 5; i = i + 1) begin
  $display("i = %d", i);
end
Key rules:

Loop variable must be integer or reg (not wire)
Use begin/end for multiple statements
Ensure condition eventually becomes false to avoid infinite loops
Loops are best used in testbenches (mostly not synthesizable)
*/

module for_challenge;
  integer i;

  initial begin
    $display("Printing 0 to 3:");

    for(i = 0; i < 4; i = i + 1) begin
      $display("i = %d", i);
    end
    
    $finish;
  end

endmodule
