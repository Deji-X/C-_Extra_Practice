module (
  input [1:0] a,
  input [1:0] b,
  output reg greater,
  output reg less,
  output reg equal
);

  always @(*) begin
    // TODO: Add if-else statements to compare a and b
    // Set greater = 1 if a > b
    // Set less = 1 if a < b
    // Set equal = 1 if a == b
    if (a > b) begin
      greater = 1;
      less = 0;
      equal = 0;
    end
    else if (a < b) begin
      greater = 0;
      less = 1;
      equal = 0;
    end
    else begin
      greater = 0;
      less = 0;
      equal = 1;
    end

  end

endmodule
