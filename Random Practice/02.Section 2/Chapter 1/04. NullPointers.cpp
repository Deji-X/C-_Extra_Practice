/* NULL POINTERS
Initialize pointers to 'nullptr' to avoid undefined behavior:

int* ptr = nullptr; // ptr is now a null pointer.

Always check if a pointer is not null before dereferencing:
if (ptr != nullptr){
  // Safe to use *ptr here
  int value = *ptr;
}
The 'nullptr' keyword explicitly indicates that the pointer is not pointing to any valid
memory loaction, making your code safer and preventing crashes from accessing invalid
memory.
*/
/*
Create a program that demonstrates safe pointer usage by
checking for null pointers before dereferencing them.

The following input will be provided:

A string that will be either "valid" or "null"
Your program should:

Declare an integer variable named data and initialize it with the value 42
Declare a pointer named ptr
If the input is "valid", assign the address of data to ptr
If the input is "null", assign nullptr to ptr
Use an if-statement to check if ptr is not null before attempting to use it
If the pointer is not null, print the value it points to
If the pointer is null, print a safety message
Use the following exact output format:

Value: [value]
For null pointers, use this format:

Pointer is null - cannot dereference
*/
#include <iostream>
#include <string>
using namespace std;

int main() {
    // Read input
    string input;
    cin >> input;
    
    // Declare the data variable
    int data = 42;
    
    // TODO: Write your code here
    // - Declare a pointer named ptr
    int* ptr;

    // - Check the input and assign appropriate value to ptr
    if (input == "valid"){
        ptr = &data;
    } else{
        ptr = nullptr;
    }
    // - Use if-statement to safely check and use the pointer

    if (ptr != nullptr){
        cout << "Value: " << *ptr << endl;
    } else {
        cout << "Pointer is null - cannot dereference" << endl;
    }
    
    return 0;
}
