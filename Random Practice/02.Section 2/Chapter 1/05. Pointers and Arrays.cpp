/*
POINTERS AND ARRAYS

Array names act as pointers to the first element. You can assign an array name directly
to a pointer:

int numbers[5] = {10, 20, 30, 40, 50};
int* ptr = numbers; // ptr points to numbers[0]

Use pointer arithmetic to navigate through array elements:

ptr++;         // Move to next element
ptr = ptr + 2; // Move forward by 2 elements

Dereference the pointer to access values:

*ptr        // Current element value
*(ptr + 1)  // Next element value

This enables pointer-based array traversal as an alternative to index-based loops.
*/

#include <iostream>
using namespace std;

int main() {
    // Given array
    int values[6] = {15, 23, 8, 42, 17, 31};
    
    // TODO: Create a pointer named 'ptr' that points to the first element of the array
    int* ptr = values;
    // TODO: Use a loop to iterate through all 6 elements using pointer arithmetic
    // TODO: Print each element by dereferencing the pointer
    // TODO: Move the pointer to the next element using pointer arithmetic
    for (int i = 0; i < 6; i++){
        cout << "Element: " << *ptr << endl;
        ptr++;
    }
    
    return 0;
}
