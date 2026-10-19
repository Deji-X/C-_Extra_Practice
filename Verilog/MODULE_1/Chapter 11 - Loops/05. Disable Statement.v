/*    DISABLE STATEMENT

The 'disable' statement stops execution of a 'named block' (e.g, forever loop). 
The block must be labeled using 'begin : block_name'.

DISABLE FROM INSIDE THE BLOCK:

initial begin : counter
  forever begin
    #10 count = count + 1;
    if (count == 5) disable counter;
  end
end


DISABLE FROM A SEPERATE BLOCK:

initial begin : counter
  forever begin
    #10 count = count + 1;
  end
end

initial begin
  #50;
  disable counter;  // Stops the named block from outside.
end 
*/


module disable_challenge;
  integer count;

  initial begin
    count = 0;
    fork
      begin : counter
        forever begin
          #10 count = count + 1;
          $display("count = %d", count);
        end
      end

      begin
        #50;
        disable counter;
        $display("Counter stopped");
        $finish;
      end
    join
  end
endmodule
