module traffic_light (
  input clk,
  input reset,
  output reg red,
  output reg yellow,
  output reg green
);

  reg [1:0] state;
  reg [5:0] counter;

  always @(*) begin
        case (state)
        0: begin 
            green = 1;
            yellow = 0;
            red = 0;
        end
        1: begin
            green = 0;
            yellow = 1;
            red = 0;
        end
        2: begin
            green = 0;
            yellow = 0;
            red = 1;
        end
        default: begin
            green = 0;
            yellow = 0;
            red = 0;
        end
        endcase
    end
  /*
  always @(*) begin
    case (state)
      0: begin green = 1; yellow = 0; red = 0; end
      1: begin green = 0; yellow = 1; red = 0; end
      2: begin green = 0; yellow = 0; red = 1; end
      default: begin green = 0; yellow = 0; red = 1; end
    endcase
  end 
  */ // This is way better!!!!

endmodule
