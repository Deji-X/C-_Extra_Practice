/*    CLOCK GENERATION
o
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

module clock_challenge;
  reg clk;
  
  // TODO: Step 1 - Add initial block to set clk = 0
  
  
  // TODO: Step 2 - Add always block to toggle clk every 4 time units
  

  initial begin
    $monitor("Time %0t: clk = %b", $time, clk);
    #20;
    $display("Clock generated for 20 time units");
    $finish;
  end
endmodule
