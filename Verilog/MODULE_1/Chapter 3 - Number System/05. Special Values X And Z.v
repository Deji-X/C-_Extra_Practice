/* SPECIAL VALUES X AND Z
X (Unknown) and Z (High-Impedance) are special simulation values in Verilog.

X: Unknown state (simulation only, not real hardware):
  * Uninitialized reg starts as X
  * Caused by: uninitialized registers, multiple drivers, timing violations
  * Spreads through logic (X AND 1 = X, but X AND 0 = 0)
  * Appears as red line in waveforms

Z: High-impedance / disconnected state:

  * Undriven wire starts as Z
  * Used for tri-state buffers and shared buses
  * Appears as middle line in waveforms

Writing X and Z in Verilog:

reg [3:0] data;  

data =  4'b10X0;    // Bit 1 is unknown.
data =  4'b01Z1;    // Bit 1 is high-impedance.
data =  4'bXXXX;    // All bits unknown.
data =  4'bZZZZ;    // All bits high-impedance.

assign c = 1'bZ;    // Explicitly set wire to Z. 
*/

module xz_challege;
  wire [3:0] a, c, d;

  assign a = ;
  assign c = ;
  assign d = ;

  initial begin
    $display ("", );
    $display ("", );
    $display ("", );
    $finish;
  end
  
endmodule
    
