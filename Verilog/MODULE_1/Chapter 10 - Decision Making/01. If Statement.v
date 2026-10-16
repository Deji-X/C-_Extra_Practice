/*  IF STATEMENT
The 'if' statement execites code only when a condition is true(1), and skips it when
false(0).

if (condition) begin
  // executes when condition is true
end

For a 'single statement', begin/end are optional:

always @(posedge clk) begin
  if (reset)
    count <= 0;
end

Condition can be any expression evaluating to 0 or 1:
if (a > b) begin max = a; end
if (a && b) begin out = a; end
if (data == 8'hFF) begin match = 1; end

Key Rules:
1. Use 'begin'/'end' to group multiple statements (like {} in other languages)
2. Without 'begin'/'end', only the immediately following line belongs to the if.
*/

module if_challenge;
  reg a, b, enable;
  reg out = 0;

  initial begin
    a = 1;
    b = 1;

    // Test case 1: enable = 1
    enable = 1;

    if (enable) begin
      out = a & b;
    end
    else begin
      out = 0;
    end

    $display("enable=1: out = %d (should be 1)", out);

    // Test case 2: enable = 0
    enable = 0;

    if (enable) begin
      out = a & b;
    end
    else begin
      out = 0;
    end

    $display("enable=0: out = %d (should be 0)", out);

    $finish;
  end
endmodule

    
