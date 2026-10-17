/*  CASEX AND CASEZ

casez allows pattern matching with don't-care bits using ? or z,
useful for priority encoders where only specific bits matter.

Statement	|Don't-Care Bits	|Notes
------------------------------------------------
case	    |None	            |Exact matching
casez	    |z or ?	          |Recommended
casex	    |x, z, or ?	      |Avoid: hides bugs

Always prefer casez over casex. casex ignores x values,
which can mask uninitialized registers or simulation errors.

casez (data)
  4'b???1: out = 0;   // Bit0 must be 1, others don't matter
  4'b??1?: out = 1;   // Bit1 must be 1, others don't matter
  4'b?1??: out = 2;   // Bit2 must be 1, others don't matter
  4'b1???: out = 3;   // Bit3 must be 1, others don't matter
  default: out = 0;
endcase
The ? means "don't care". That bit can be 0, 1, or anything.

*/

module decoder (
  input [3:0] in,
  output reg [3:0] out
);

  always @(*) begin
    casez (in)
      4'b???1: out = 4'b0001;
      4'b??1?: out = 4'b0010;
      4'b?1??: out = 4'b0100;
      4'b1???: out = 4'b1000;
      default: out = 4'b0000;
  
    endcase
  end
  
endmodule
