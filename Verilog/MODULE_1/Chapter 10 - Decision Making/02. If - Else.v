/*  If - Else
The 'if-else' statement executes one of two blocks based on a condition:
if (condition) begin
  // Executes when condition is true (1)
end else begin
  // Executes when condition is false (0)
end

Chain multiple conditions with 'else if':
if (a > b) begin
  max = a;
end
else if (b > a) begin
  max = b;
end
else begin
  max = a;  // a and b are equal
end

1. 'else' is optional.
2. Use 'begin/end' when multiple statements are in a block.
3. 'else' always belongs to the nearest 'if'.
*/
