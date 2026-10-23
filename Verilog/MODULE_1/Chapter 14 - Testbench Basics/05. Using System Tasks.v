/*    USING SYSTEM TASKS

System tasks in Verilog start with $ and perform simulation utilities:

System Task	Purpose
$time	Return current simulation time
$finish	End simulation
$stop	Pause simulation
$random	Generate random number
$display("Time: %0t", $time); // print current time
$finish;                       // end simulation
$stop;                         // pause simulation

reg [7:0] rand_value;
rand_value = $random;          // assign random number 

*/
