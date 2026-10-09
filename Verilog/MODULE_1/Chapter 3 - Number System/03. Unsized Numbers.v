/* UNSIZED NUMBERS
Unsized numbers in Verilog to 32 bits. Syntax:
'[format][value]

'b1010 // 32-bit binary
'd255  // 32-bit decimal
'hFF   // 32-bit hex

Sized numbers use [bits]'[format][value]:

8'b1010 // 8-bit binary
8'd255  // 8-bit decimal
8'hFF   // 8-bit hex

Assigning an unsized number to a smaller register keeps only the lower bits: use
SIZED NUMBERS FOR HARDWARE ASSIGNMENTS to avoid warnings and unexpected 
truncation.
*/
