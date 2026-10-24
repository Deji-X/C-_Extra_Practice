/* VECTORS
A vector is a multi-bit 'wire' or 'reg', declared using [MSB:LSB] syntax:
wire [7:0] bus;  // 8-bit wire vector.
reg [15:0] addr; // 16-bit reg vector.

Accessing individual bits and slices:

reg [7:0] data;

data[0] = 1;
data[7] = 0;
datat[3:1] = 3;b101; // Set bits 3,2,1 using binary

Bit orderL [MSB:LSB] is the standard convention (e.g., [7:0] means bit 7 is MSB,
bit 0 is LSB).
*/
/*
Challenge

Easy
The module below needs vector declarations. 

What to do: 

Change each input and output to be 8-bit vectors.
*/

module vector_example(
  input [7:0] a,
  input [7:0] b,
  output[7:0] c
);

  assign c = a & b;

endmodule
