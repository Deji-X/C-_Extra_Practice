/*
In this lesson, you will add the state transition logic to the traffic light controller. The state machine determines when to move from one state to the next.

The state machine logic controls when and how the traffic light changes states.

State Sequence
Green → Yellow → Red → Green → …

Your task is to add the state machine logic to the module.

In this step a new input signal, next, triggers each change; the timing counter comes in the next step. Keep everything you wrote in the previous step (the state register, the unused counter declaration and the output always @(*) block).

What to do:

Add a 1-bit input port called next to the module header, after reset: input next,. The testbench pulses it to request the next state
Add an always @(posedge clk or posedge reset) block
On reset, set state to Red (2)
When next is 1, move to the next state:
If state is Green (0): change to Yellow
If state is Yellow (1): change to Red
If state is Red (2): change to Green
*/
module traffic_light (
  input clk,
  input reset,
  input next,
  output reg red,
  output reg yellow,
  output reg green
);
  
  reg [1:0] state;
  
  reg [5:0] counter;

  always @(*) begin
    case (state)
      0: begin green = 1; yellow = 0; red = 0; end
      1: begin green = 0; yellow = 1; red = 0; end
      2: begin green = 0; yellow = 0; red = 1; end
      default: begin green = 0; yellow = 0; red = 1; end
    endcase
  end

  always @(posedge clk or posedge reset) begin
    if (reset)
      state <= 2;
    else if (next) begin
      case (state)
        0: state <= 1;
        1: state <= 2;
        2: state <= 0;
        default: state <= red;
      endcase
    end
  end
    

endmodule
