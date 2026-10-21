/*      Assignment Delays
Assignment delay reads the right-hand side immediately, waits the delay, then assigns:

variable = #dely expression;

Key Difference Vs General Delay:

                  | General Delay #10 a = b;  | Assignment Delay a = #10 b;
---------------------------------------------------------------------------                  
Value of b read   |  After delay              |  Immediately
Value Assigned    |  After delay              |  After delay

When 'b' change during the delay, results differ:

initial begin
  b    = 1;
  a1   = #10 b;    // Reads b=1 now, assigns a1=1 at time 10.
  #5 b = 0;        // b changesat time 5 - a1 still gets 1
  // With #10 a2 = b; -> reads b=0 at time 10, so a2=0
end

Only valid inside procedural blocks (initial or always).

*/

module assignment_challenge;

  reg a, b;

  initial begin
    b = 1;
    a = #15 b;



  end

  initial begin
    #5 b = 0;
    #20 $display("Time %0t: a = %b", $time, a);
    $finish;
  end
endmodule
