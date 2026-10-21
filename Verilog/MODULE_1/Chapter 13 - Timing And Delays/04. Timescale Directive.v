/*    TIMESCALE DIRECTIVE

The `timescale directive sets the time unit and time precision for simulation.
It must be placed before any module definition.

`timescale time_unit / time_precision

`timescale 1ns / 1ps

initial begin
  #10 a = 1;    // Waits 10 nanoseconds
end

1. time_unit: the basic unit for delays(e.g.., #10 = 10ns)
2. time_precision: how precisely simulation rounds (must be ≤ time unit)

Timescale	  | Use Case
-------------------------------
1ns / 1ns	  |  Simple simulations
1ns / 1ps	  |  More precise
1ps / 1ps	  |  High-speed designs
1us / 1ns	  |  Slow simulations


you need to understand this perfectly well!!!
***Mail me for a textbook on Timescale, very comprehensive and free.***

*/

`timescale 1ns / 1ps

module timescale_challenge;
  
  initial begin
    $display("Time %0t", $time);
    #10 $display("Time %0t (10ns = 10000ps)", $time);
    #10 $display("Time %0t (20ns = 20000ps)", $time);
    #10 $display("Time %0t (30ns = 30000ps)", $time);
    $finish;
  end
endmodule
