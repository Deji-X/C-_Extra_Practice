/* PARAMETERS
Parameters allow configuring module instances differently without rewriting code.

Declaring Parameters
module counter #(
  parameter WIDTH = 8  // default value
)(
  input clk,
  output reg [WIDTH-1:0] count
);
  always @(posedge clk) count <= count + 1;
endmodule
Overriding Parameters at Instantiation
counter u1 (.clk(clk), .count(count1));          // uses default (8)
counter #(.WIDTH(16)) u2 (.clk(clk), .count(count2)); // overridden to 16
Multiple Parameters
module fifo #(
  parameter DEPTH = 16,
  parameter WIDTH = 8
)( ... );
Localparam (non-overridable constant)
localparam STATE_IDLE = 2'b00;
localparam STATE_RUN  = 2'b01;
Use localparam for internal constants that must not be changed from outside the module.
*/
