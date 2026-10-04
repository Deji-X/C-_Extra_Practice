/*
CREATING A VECTOR
To create a std::vector, specify the data type in angle brackets:
std::vector<int> numbers; // Empty vexctr

INITIAL A VECTOR WITH VALUES USING AN INITIALIZER LIST:
std::vector<int> scores = {85, 92, 78, 96, 88};

ACCESS VECTOR ELEMENTS USING SQUARE BRACKETS WITH INDICES:
scores[0] // First element
scores[1] // Second element

GET THE NUMBER OF ELEMENTD USING .size():
scores.size() // Returns number of elements.

Vectors can hold different data types by changing the type in angle brackets:
std::vector<string> for text
std::vector<double> for decimal numbers

*/
#include <iostream>
#include <vector>
using namespace std;

int main(){
  int val1, val2, val3, val4, val5;
  cin >> val1 >> val2 >> val3 >> val4 >> val5;

  // TODO: Write your code below
  
  // Create a vector named 'numbers' and initialize it with the input values
  vector<int> numbers = {val1, val2, val3, val4, val5}; 
  
  // Print each element using the required format
  for (int i = 0; i < numbers.size(); i++){
    //(int i = 0; i < 5; i++)
    cout << "Element " << i << ": " << numbers[i] << endl;
  }
  //Incase the code above doesn't work
  /*
  cout << "Element 0: " << numbers[0] << endl;
  cout << "Element 1: " << numbers[1] << endl;
  cout << "Element 2: " << numbers[2] << endl;
  cout << "Element 3: " << numbers[3] << endl;
  cout << "Element 4: " << numbers[4] << endl;
  */

  // Print the vector size
  cout << "Vector size: " << numbers.size() << endl;
  

  return 0;
}
