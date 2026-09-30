/*
The address-of operator '&' is used to get the memory addrress of a variable:

int number = 42;
int* ptr = &number; // ptr stores the address of number.

When you use '&variable_name',
it returns the location in memory where that variable is stored.
The pointer contains the address, not the actual value of the variable.
*/
/* ADDRESS-OF OPERATOR

Create A Program that demonstrates the address-of operator by working with an integer
variable and a pointer. Declare an integer variable named 'score' and initialize it with
the value '85'.
Create a pointer nmed scorePtr that stores the memory address of the 'score' variable
using the address-of operator. 
Print the memory address stored in the pointer using the following format:
Address: 0x...

For example, if the address is '0x7fff5fbff6ac', your output should be:
Address: '0x7fff5fbff6ac'

Note: Do not include square brackets in your output. The '0x' prefix is part pf the 
standard hexadecimal representation of a memory address in C++
*/

#include <iostream>
#include <string>

using namespace std;

int main(){
  return 0;
}
