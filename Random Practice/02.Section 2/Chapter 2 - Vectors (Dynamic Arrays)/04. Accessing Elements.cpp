/*
C++ vectors provide two main ways to access individual elements:

Square bracket operator []:

std::vector<int> numbers = {10, 20, 30, 40};
int first = numbers[0];    // Gets 10
int third = numbers[2];    // Gets 30
The .at() method:

int first = numbers.at(0);    // Gets 10
int third = numbers.at(2);    // Gets 30
The key difference is safety:[] can causeunpredictable behavior
if accessing invalid indices, while .at() throws an exception for
bounds-checking protection.

To access the last element, use data.size() - 1 as the index.
*/

#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main(){
  // Read input
  int n;
  cin >> n;

  vector<int> data;

  // Read n integers and add item to the vector
  for (int i = 0; i < n; i++){
    int num;
    cin >> num;
    data.push_back(num);
  }

  int index1, index2;
  cin >> index1 >> index2;

  // TODO: Write your code below
  // Access elements using [] operator and .at() method
  // Store the accessed values in value1 and value2
  int value1 = data[index1];
  int value2 = data.at(index2);

  // Output the results
  cout << "Element at index " << index1 << ": " << value1 << endl;
  cout << "Element at index " << index2 << ": " << value2 << endl;
  cout << "First element: " << data.at(0) << endl; //data[0]
  cout << "Last element: " << data.at(data.size() - 1) << endl;

  return 0;
}
