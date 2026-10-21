/*    CLOCK GENERATION

A clock toggles between 0 and 1 at regular intervals. Period = 2 × delay.

Method 1: Always block (most common)

reg clk;

initial begin
  clk = 0;
end

always #5 clk = ~clk; // Period = 10
Method 2: Forever loop

initial begin
  clk = 0;
  forever #5 clk = ~clk;
end
Method 3: Repeat (fixed number of edges)

initial begin
  clk = 0;
  repeat(10) #5 clk = ~clk; // 10 edges = 5 cycles
end


*/
