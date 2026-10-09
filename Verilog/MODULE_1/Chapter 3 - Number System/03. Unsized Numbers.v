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
module unsized_challenge;
  reg [7:0] a, b, c;


  initial begin
    a = 8'b1010;
    b = 8'd255;
    c = 8'hFF;

    $display("a = %b", a);
    $display("b = %d", b);
    $display("c = %h", c);
    $finish;
    // Note here.
    // The exercise asked for display in binary, so the display codes are wrong.
    // Below is the right code:
    /*
    $display("a = %b", a);
    $display("b = %b", b);
    $display("c = %b", c);
    */
  end
endmodule
  
