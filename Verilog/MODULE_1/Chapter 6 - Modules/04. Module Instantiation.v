/* Module Instantiation



Module instantiation creates a copy of a module inside another module:

module_name instance_name (connections);
Example:

module and_gate (input a, input b, output c);
  assign c = a & b;
endmodule

module top (input x, input y, output z);
  and_gate gate1 (x, y, z); // x→a, y→b, z→c
endmodule
Rules:

Instance name must be unique
Number of connections must match number of ports
Connection order must match port definition order
Multiple instances run in parallel, each with its own signals

*/
