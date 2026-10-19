/*    REPEAT LOOP

The repeat loop executes a block of code a fixed number of times without a loop counter
variable.

repeat (number) begin
  // Code to repeat
end
Can use a constant or variable expression:

integer count = 3;
repeat (count) begin
  $display("Looping");
end
Common use case: generating clock cycles:

repeat (20) begin
  #5 clk = ~clk;
end
Repeat vs For Loop: Use repeat when you only need repetition (no index needed);
use for when you need the iteration counter value.
*/

module repeat_challenge;

  integer number;

  initial begin
    $display("Printing 4 times:");

    number = 4;

    repeat (number) begin
      $display("Verilog");
    end

    $finish;

  end

endmodule
