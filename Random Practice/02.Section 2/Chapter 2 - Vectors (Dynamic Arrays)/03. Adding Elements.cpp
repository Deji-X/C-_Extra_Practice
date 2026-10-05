/* ADDING ELEMENTS
Use 'push_back()' to add elements to the end of a vector:

vector<int> numbers;
numbers.push_back(10);
numbers.push_back(20);
numbers.push_back(30);

The 'push_back()' method automatically handles memory management, expanding the vector
as needed when adding elements.

*/
#include <iostream>
#include <vector>

using namespace std;

int main(){
  //Read the number of elements to add
  int n;
  cin >> n;

  //Create an empty vector
  vector<int> numbers;

  for (int i = 0; i < n; i++){
    int value;
    cin >> value;
    
    numbers.push_back(value);
    cout << "Added: " << value << ", size is now " << numbers.size() <<endl;

    
  // Print fnal vector
  cout << "Final vector: ";
  // TODO: Print all elements seperated ny spaces
  for (int i = 0; i < numbers.size(); i++){
    cout << numbers[i] << " ";
  }
   cout << endl;
    
  return 0;
}
