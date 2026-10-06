/* REMOVING ELEMENTS
Use std::find() from <algorithm> combined with .erase() to remove a specific element
from a vector.

#include <algorithm>
#include <vector>
vector<int> numbers = {10, 20, 30, 40};
auto it = find(numbers.begin(), numbers.end(), 20);
if (it != numbers.end()) {
    numbers.erase(it); // Removes element at iterator position
}

Always check if the iterator is not equal to end() before erasing to avoid undefined
behavior. The .erase() method requires an iterator, not a value directly.

*/
#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

int main() {
    // Read number of elements to add
    int n;
    cin >> n;
    
    // Create an empty vector
    vector<int> myVector;
    
    // Read and insert n elements
    for (int i = 0; i < n; i++) {
        int element;
        cin >> element;
        myVector.push_back(element);
    }
    
    // Print initial vector size
    cout << "Initial size: " << myVector.size() << endl;
    
    // Read number of elements to remove
    int m;
    cin >> m;
    
    // Remove each requested element
    for (int i = 0; i < m; i++) {
        int element;
        cin >> element;
        
        auto it = find(myVector.begin(), myVector.end(), element);
        
        if (it != myVector.end()) {
            myVector.erase(it);
        }
        
        cout << "After removing " << element 
             << ": size = " << myVector.size() << endl;
    }
    
    // Print remaining elements
    cout << "Remaining elements: ";
    
    for (const int& element : myVector) {
        cout << element << " ";
    }
    
    cout << endl;
    
    return 0;
}
