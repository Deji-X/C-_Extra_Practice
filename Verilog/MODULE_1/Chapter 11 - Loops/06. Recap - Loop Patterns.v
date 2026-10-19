module loop_patterns;
  integer i;

  initial begin
    $display("For Loop: ");
    
    for (i = 0; i < 2; i = i + 1) begin
      $display("i = %d", i);
      end

    $display("While Loop:");
    
    i = 0;
    while (i < 3) begin
      $display("i = %d", i);
      i = i + 1;
    end

    $display("Repeat Loop:");
    
    i = 3;
    repeat (i) begin
      $display("Hello");
    end
    
    $finish;
  end
endmodule

    
