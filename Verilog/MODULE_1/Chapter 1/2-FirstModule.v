/*module module_name(
  input a,
  input b,
  output c
);
  assign c = a & b; // AND
  assign c = a | b; // OR

endmodule
*/
module or_gate(
  input x, y,
  output z
);
  assign z = x | y;
endmodule
