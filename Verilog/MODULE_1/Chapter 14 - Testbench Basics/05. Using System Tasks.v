/*    USING SYSTEM TASKS

System tasks in Verilog start with $ and perform simulation utilities:

System Task	  |Purpose
-----------------------------------------------
$time	        |Return current simulation time
$finish	      |End simulation
$stop	        |Pause simulation
$random	      |Generate random number


$display("Time: %0t", $time); // print current time
$finish;                       // end simulation
$stop;                         // pause simulation

reg [7:0] rand_value;
rand_value = $random;          // assign random number 

*/


module and_gate (
  input a, b,
  output c
);
  assign c = a & b;
endmodule


module testbench;
  reg a, b;
  wire c;

  and_gate dut(
    .a(a),
    .b(b),
    .c(c)
  );

  initial begin
    $display("Start time: %0t", $time);

    $monitor("Time 50t: a=%b, b=%b, c=%b", $time, a, b, c);

    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $display("End time: %0t", $time);


    $finish;
  end
endmodule
