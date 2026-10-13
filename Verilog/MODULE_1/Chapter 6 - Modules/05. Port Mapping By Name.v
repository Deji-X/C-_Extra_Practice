/* PORT MAPPING BY NAME
Port mapping by name uses .port_name(signal) syntax, making order irrelevant:

module_name instance_name (
  .port_name(signal),
  .port_name(signal)
);
Example:

or_gate or1 (
  .in1(input_a),
  .in2(input_b),
  .result(output_y)
);

The . before the port name refers to a port inside the module;
the signal in parentheses is what connects to it.
Unlike order mapping, connections can be listed in any order without causing bugs.

*/
