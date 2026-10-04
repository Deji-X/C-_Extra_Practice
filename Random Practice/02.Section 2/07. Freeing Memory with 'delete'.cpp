/* FREEING MEMORY WITH 'DELETE'
The 'delete' keyword deallocates memory that was previously allocated  with 'new':

int* ptr = new int(42); // Allocate memory.
// Use the memory...
delete ptr;             // Free the memory.

For every 'new', there must be a corresponding 'delete' to avoid memory leaks.

After calling 'delete', set the pointer to 'nullptr' to avoid accidentally using invalid
memory:

delete ptr;
ptr = nullptr;
*/
#include <iostream>
#include <string>

using namespace std;

int main(){
  int firstValue, secondValue;
  cin >> firstValue;
  cin >> secondValue;

  int* dynamicPtr = new int;
  
  return 0;
}
