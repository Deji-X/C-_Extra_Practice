/*
Reduction Operators



Reduction operators work on all bits of a single vector
and reduce them to a single bit result.

Operator	      Operation	  Result
&	Reduction     AND	        1 if all bits are 1
|	Reduction     OR	        1 if at least one bit is 1
^	Reduction     XOR	        1 if odd number of bits are 1
~&	Reduction   NAND	      0 if all bits are 1
~|	Reduction   NOR	        0 if at least one bit is 1
~^	Reduction   XNOR	      1 if even number of bits are 1

Common uses:

all_ones   = &data;   // 1 if all bits are 1
any_one    = |data;   // 1 if any bit is 1 (data != 0)
odd_parity = ^data;   // 1 if odd number of 1's
all_zeros  = ~|data;  // 1 if data == 0
*/
