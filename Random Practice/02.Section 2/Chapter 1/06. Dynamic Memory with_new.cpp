/*
DYNAMIC MEMORY WITH 'NEW'
The 'new' keyword allocates memory for a varialble on the heap during program execution:

int* ptr = new int;  // Allocates memory for an integer.
*ptr = 42;           // Assigns a value to the allocated memory.

Unlike regular variables created on the stack, dynamically allocated memory persisits until
explicitly freed and can exist beyond the scope where it was created.
*/

#include <iostream>
#include <string>

using namespace std;

int main(){

  int value;
  cin >> value;

  int* numPtr = new int;
  *numPtr = value;

  cout << "Value: " << *numPtr << endl;
  cout << "Address: " << numPtr << endl;

  
  return 0;
}
