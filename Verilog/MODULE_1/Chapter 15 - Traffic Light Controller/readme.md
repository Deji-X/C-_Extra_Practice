A traffic light controller is a finite state machine that cycles through different
light states (Red, Yellow, Green)with specific timing intervals.
A finite state machine(FSM) is a circuit that can be in one of a limited number of states.
It changes from one state to another based on inputs or timing.

In this project, you will build a traffic light controller for a simple intersection.
The traffic light has three outputs:

Light	    |Output	    |Meaning
------------------------------
1.Red	    |red = 1	|Stop
2.Yellow    |yellow = 1	|Caution
3.Green	    |green = 1	|Go


The lights cycle in this order:
Green → Yellow → Red → Green → …


Timing Sequence
State	  |Duration	    |Next State
---------------------------------
1.Green	  |30 seconds	|Yellow
2.Yellow  |10 seconds	|Red
3.Red	  |40 seconds	|Green

In this lesson, you will define the states for the traffic light controller.

A traffic light has three possible states:

State	    |Light	            |Code
---------------------------------
1.Green	    |Green light ON	    |2'b00
2.Yellow	|Yellow light ON	|2'b01
3.Red	    |Red light ON	    |2'b10

Complete the module by adding the missing parts.

What to do:

Define state encoding: 0=Green, 1=Yellow, 2=Red

1. Declare a 2-bit register called state
2. Declare a 6-bit register called counter (for timing up to 40 seconds).
    It is not used in this step:the timing logic that counts with
    it comes later in this project,in the step Timing the Transitions
3. Add the output assignments inside a combinational always block,
    always @(*) begin ... end, with a case (state) inside it.
    red, yellow and green are declared as output reg,
    and a reg can only be assigned inside such a block.
    The @(*) means the block runs again whenever anything it reads changes,
    which here is state:

     o When state is 0: green = 1, yellow = 0, red = 0
     o When state is 1: green = 0, yellow = 1, red = 0
     o When state is 2: green = 0, yellow = 0, red = 1
