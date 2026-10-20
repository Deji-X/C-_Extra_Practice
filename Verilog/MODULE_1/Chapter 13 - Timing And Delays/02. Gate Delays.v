/*    Gate Delays

Gate Delays model propagation time in built-in gate primitives.

Syntax:
gate_type #(delay) (output, input1, input2,.....);

Examples:
and  #5 (out, a, b);
or   #3 (out, a, b);
not  #2 (out, a);
nand #8 (out, a, b, c, d);

Key Points:
1. # comes after the gate name, before the port list.
2. Anny input chnage triggers the delay before output updates.
3. Gate delays are for simulation only, not synthesizable.

*/
