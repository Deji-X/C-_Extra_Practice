/*    FOREVER LOOP.

The 'forever' loop repeats a block of code continuously without stopping. Always include
a delay to prevent simulation hang.

initial begin
    clk = 0;
    forever begin
    #5 clk = ~clk;  // Toggle every 5 time units
  end
end

Stop a 'forever' loop using ''disable with a named block:

initial begin : clock_gen
    clk = 0;
    forever begin
    #5 clk = ~clk;
  end
end

initial begin
    #100;
    disable clock_gen;
end

KEY RULES:
1. Must include a delay (#10 or @(posedge clk)), otherwise simulation hangs.
2. Use 'disable' to stop, or simulation never end.
3. Not synthesizable: testbench use only.
*/

module forever_challenge;
    reg clk;

    initial begin
        clk = 0;

        forever begin
            #10 clk = ~clk;
        end

    end

endmodule
