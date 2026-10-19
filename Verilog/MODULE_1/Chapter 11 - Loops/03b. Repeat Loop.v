// Their solution, another way to look at it.

module repeat_challenge;
  
  initial begin
    $display("Printing 4 times:");
    
    repeat (4) begin
      $display("Verilog");
    end
    
    $finish;
  end
endmodule
