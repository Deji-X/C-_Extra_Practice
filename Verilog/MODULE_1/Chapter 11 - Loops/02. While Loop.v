/*  WHILE LOOP
The 'while' loop repeats a block of code as long as a condition is true.
You must update the loop variable manually.

integer i = 0;

while (i < 5) begin
  $display("i = %d", i);
  i = i + 1;
  end

KEY RULES:
1. Loop variable must be 'integer' (not 'reg')
2. Always update the loop variable inside the loop to avoid infinite loops.
3. Use 'begin/end' for simulation statements.

While vs For: Use 'for' when the nu,ber of iterations is unknown; use 'while' when the 
stop condition is dynamic(e.g.. searching for a value).

// Finding first set bit
while (data[i] != 1) begin
  i = i + 1;
end

*/

module while_challenge;
  integer i;

  initial begin
    i = 0;
    $display("Printing 0 to 2:");

    while (i < 3) begin
      $display("i = %d", i);
      i = i + 1;
    end

    $finish;
  end
endmodule
