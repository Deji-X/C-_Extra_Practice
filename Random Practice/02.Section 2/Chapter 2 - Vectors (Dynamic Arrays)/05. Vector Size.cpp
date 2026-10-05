/* VECTOR SIZE
The .size() method returns the current numer of elements in a vector:

std::vector<int> numbers = {10, 20, 30, 40, 50};
int count = numbers.size();
cout << "The vector has " << count << "elements" << endl;

The .size() method returns an unsigned integer and updates automatically as you add or
remove elements. It's useful for checking if a vector is empty, validating array bounds, 
or setting up loops.
*/
#include <iostream>
#include <vector>
using namespace std;


int main() {
  // Read the number of scores
  int n;
  cin >> n;
  
  // Create an empty vector for scores
  vector<int> scores;
  
  // TODO: Write your code below
  // 1. Print the initial size of the empty vector
  cout << "Initial vector size: " << scores.size() << endl;
  
  // 2. Use a loop to read each score and add it to the vector
  for (int i = 0; i < n; i++){
    int score;
    cin  >> score;
    scores.push_back(score);
    
  // 3. After adding each score, print the current size
  cout << "After adding score, size is : " << scores.size() << endl;
  }
  
  // 4. Print the final summary message
  cout << "Total scores collected: " << scores.size() << endl;
  
  
  return 0;
}
