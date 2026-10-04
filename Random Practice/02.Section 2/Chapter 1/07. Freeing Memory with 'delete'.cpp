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

  // TODO: Write your code below
    // 1. Allocate memory using new and store in dynamicPtr
    // 2. Assign firstValue to the allocated memory
    // 3. Print initial value
    // 4. Update with secondValue
    // 5. Print updated value
    // 6. Delete the memory and set pointer to nullptr
    // 7. Print confirmation message
  
  int* dynamicPtr = new int;
  *dynamicPtr = firstValue;

  cout << "Initial value: " << *dynamicPtr << endl;

  *dynamicPtr = secondValue;

  cout << "Updated value: " << *dynamicPtr << endl;

  delete dynamicPtr;

  dynamicPtr = nullptr;

  if (dynamicPtr == nullptr){
    cout << "Memory freed successfully" << endl;
  } else {
    cout << *dynamicPtr << endl;
  }
  
  return 0;
}


