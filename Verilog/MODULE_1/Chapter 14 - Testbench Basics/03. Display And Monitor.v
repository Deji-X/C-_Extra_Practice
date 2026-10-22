/*    DISPLAY AND MONITOR

'$display' prints once when executed;
'$monitor' prints automatically whenever any of its variable change.

$display("message", variables);
$display("message", variables);

Example:

initial begin
  $display("Simulation started");
  $monitor("Time %0t: a=%b, b=&b", $time, a, b);
  #10 a = 1;
  #10 b = 1;
end

Common Format Specifiers:
*/
