// 1. QUESTION
reg [7:0] mem [3:0];

mem[3] = 8'b10110110;
mem[2] = 8'b01101101;
mem[1] = mem[3] ^ mem[2];

What is the value of:
mem[1][7:4]
ANSWER: 4'b1101;
// 2. QUESTION
reg [1:0] mem [3:0];

mem[0] = 2'b10;
mem[1] = 2'b01;
mem[2] = mem[0] + mem[1];
mem[3] = {mem[0], mem[1]};

ANSWER: mem[3] becomes 2'b01;
because only the rightmost 2 bits of the concatenation are stored.

//3. QUESTION 
reg signed [7:0] mem [0:3];

mem[0] = 8'b11111100;   // -4
mem[1] = 8'b00000011;   //  3

mem[2] = mem[0] >>> 1; // Arithmetic Right Shift by 1.
mem[3] = mem[1] << 2; // Logical Left Shift twice.

mem[2] = 8'b11111110, mem[3] = 8'b00001100;

//4. Multidimensional Packed/Unpacked Indexing.
reg [7:0] mem[0:3];

mem[0] = 8'b10110110;
mem[1] = 8'b01001101;
mem[2] = 8'b11110000;
mem[3] = 8'b00111111;

{mem[2][3:0], mem[0][7:4]};
//mem[2][3:0] = 4'b0000;
//mem[0][7:4] = 4'b1011;
//Therefore the concatenation of these values is = 8'b00001011;

//5. Array Indexing + Part-Select + Bit Reversal

reg [7:0] mem [0:3];

mem[0] = 8'b11010011;
mem[1] = 8'b01101100;

mem[2][7:4] = mem[0][3:0];
// Says assign the MSB nibble of mem[2] the value of LSB nibble of mem[0]
// Meaning mem[2][7:4] = 4'b0011;

mem[2][3:0] = mem[1][7:4];
// Says assign the LSB nibble of mem[2] the value of MSB nibble of mem[1]
// Meaning mem[2][3:0] = 4'b0110;

// THEREFORE
mem[2] = 8'b00110110;
