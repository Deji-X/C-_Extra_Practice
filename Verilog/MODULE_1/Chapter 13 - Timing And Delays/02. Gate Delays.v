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

module gate_delay_challenge;
  reg a, b;
  wire and_out, or_out, not_out;

  and  #5 (and_out, a, b);

  or   #3 (or_out, a, b);

  not  #2 (not_out, a);

  initial begin
    $monitor("Time %0t: a=%b, b=%b  |  and=%b, or=%b, not=%b",
             $time, a, b, and_out, or_out, not_out);

    a = 1; b = 1;
    #10 $finish;
  end

endmodule
