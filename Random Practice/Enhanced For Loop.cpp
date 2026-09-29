/*
The enhanced for loop (for-each loop) provides a simpler way to iterate
through arrays without manual indexing:

for (data_type element : array) {
    // Code to be executed for each element
}

Example with integer array:

int numbers[] = {1, 2, 3, 4, 5};
for (int number : numbers) {
    std::cout << number << std::endl;
}
The enhanced for loop is useful when you need to access each element
without modifying the array.

Create a program that does the following:

Initializes an array of strings named fruits with the values:
"apple", "banana", "orange", "grape", and "kiwi".
Uses an enhanced for loop to iterate over the fruits array.
In each iteration, prints the current fruit
*/

#include <iostream>
#include <string>

using namespace std;

int main(){
  string fruits[] = {"apple", "banana", "orange", "grape", "kiwi"};

  // Enhanced loop to access each element without modifying the array.
  for (string fruit : fruits){
    cout << fruit << endl;
  }
  return 0;
}
