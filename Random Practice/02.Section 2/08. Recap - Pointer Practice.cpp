#include <iostream>
#include <string>

using namespace std;

int main(){
  int initialValue, newValue;
  cin >> initialValue >> newValue;

  int score;
  score = initialValue;

  int* scorePtr = &score;

  cout << "Original score: " << score << endl;

  *scorePtr = newValue;

  cout << "Modified score: " << score << endl;

  cout << "Pointer address: " << scorePtr << endl;
  
  return 0;
}

/*
#include <iostream>
using namespace std;

int main() {
    // Read input values
    int initialValue, newValue;
    cin >> initialValue;
    cin >> newValue;
    
    // TODO: Write your code below
    // 1. Declare an integer variable named 'score' and initialize it with initialValue
    int score = initialValue;
    
    // 2. Create a pointer named 'scorePtr' that points to the score variable
    int* scorePtr = &score;
    
    // 3. Print the original value, modify through pointer, and print results
    cout << "Original score: " << score << endl;
    
    *scorePtr = newValue;
    
    cout << "Modified score: " << score << endl;
    cout << "Pointer address: " << scorePtr << endl;
    
    return 0;
}
*/
