// Their solution.
module if_challenge;
  reg a, b, enable;
  reg out = 0;          // Initialize to 0
  
  initial begin
    a = 1;
    b = 1;
    
    // Test case 1: enable = 1
    enable = 1;
    if (enable) begin
      out = a & b;
    end
    $display("enable=1: out = %d (should be 1)", out);
    
    // Test case 2: enable = 0
    enable = 0;
    out = 0;            // Reset before test
    if (enable) begin
      out = a & b;
    end
    $display("enable=0: out = %d (should be 0)", out);
    
    $finish;
  end
endmodule
