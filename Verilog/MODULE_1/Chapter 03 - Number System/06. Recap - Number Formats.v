module number_formats;
  wire [7:0] a, b;
  wire [15:0] c;
  wire [3:0] d, e;

  assign a = 8'b10101010;
  assign b = 8'd255;
  assign c = 16'hFF;
  assign d = 4'b1X11;
  assign e = 4'bZZZZ;

  initial begin
    $display("a = %b", a);
    $display("b = %b", b);
    $display("c = %h", c);
    $display("d = %b", d);
    $display("e = %b", e);
    $finish;
  end

endmodule

  
