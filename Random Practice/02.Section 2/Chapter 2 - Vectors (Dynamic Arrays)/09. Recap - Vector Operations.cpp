#include <iostream>
#include <vector>
#include <string>

using namespace std;

int main() {
  // Read the number of integers
  int n;
  cin >> n;
  
  // Read the n integers
  vector<int> numbers;
  for (int i = 0; i < n; i++) {
    int num;
    cin >> num;
    
    // TODO: Add num to the vector using push_back()
    numbers.push_back(num);
    
  }
  
  // Read the additional integer
  int additional;
  cin >> additional;
  
  // TODO: Add the additional integer to the vector
  numbers.push_back(additional);
  
  // TODO: Calculate sum using range-based for loop
  int sum = 0;

  
  
  // Write your range-based for loop here
  for (int num: numbers) {
    sun += numbe
  }

  
  // Output the result
  cout << "Sum: " << sum << endl;
  
  
  return 0;
}
