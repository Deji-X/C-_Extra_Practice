/*
Wire represents a physical connection between components.
Wires cannot store values. They just pass values through.

wire a;       // Single-bit wire
wire b, c;    // Multiple wires on one line
Wires are used with assign statements. Whenever the source changes, the wire updates instantly:

wire x;
assign x = y;  // x always follows y
Module inputs and outputs are wires by default:

module and_gate(
  input a,   // wire by default
  input b,   // wire by default
  output c   // wire by default
);

assign c = a & b;
endmodule
*/
module simple(
  input a,
  input b,
  output c
);

  assign c = a & b;

  //Declare wire temp here
  wire temp:


endmodule
