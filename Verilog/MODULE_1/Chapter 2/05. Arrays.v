/*
ARRAYS
Arrays store multiple values in one variable, accessed by index.
An array is a collection of wire, reg, integer, or real types.

Declaration syntax: <data_type> <name> [<size>];

reg [7:0] memory [0:255];  // 256 elements, each 8 bits wide
wire [3:0] bus [0:3];      // 4 elements, each 4 bits wide
integer counters [0:9];    // 10 integers
Accessing elements:

memory[0] = 165;
memory[2] = memory[0] + memory[1];
$display("%d", memory[2]);
Multi-dimensional arrays:

reg [7:0] matrix [0:3][0:3];  // 4x4 array of 8-bit values
matrix[0][0] = 255;
Array vs Vector:

Vector, one value with multiple bits: reg [7:0] data;, data[3] accesses bit 3
Array, multiple values, each with its own bits:
reg [7:0] mem [0:255];, mem[3] accesses element 3
Arrays are mostly used in testbenches;
for hardware memory, use special memory primitives.
*/
/*
Complete the code below to create an array that stores 4 test values.

What to do: 

Declare an array called test_data
Use the reg data type (because it stores values in a testbench)
Each element should be 8 bits wide ([7:0])
The array should have 4 elements ([0:3])
*/

module arrays;
  // Declare an array called test_data.
  // It should have 4 elements, each 8 bits wide.
  // Use the reg data type (because it stores values in a testbench)

  reg [7:0] test_data [3:0];

  integer i;

  initial begin
    test_data[0] = 170;
    test_data[1] = 240;
    test_data[2] = 204;
    test_data[3] = 15;

    for (i = 0; i < 4; i = i + 1) begin 
      $display("test_data[%0d] = %b", i, test_data[i]);
    end
    $finish

    endmodule
