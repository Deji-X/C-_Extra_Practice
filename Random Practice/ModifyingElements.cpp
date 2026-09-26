#include <iostream>
#include <string>
using namespace std;


int main() {
    int n;
    int index;
    string newElement;
    
    cin >> n;
    cin >> index;
    cin.ignore();
    getline(cin, newElement);
    
    string arr[n];

    // Use n, index, arr and newElement to solve the problem
    // You may also declare additional variables as needed
    
    for (int i = 0; i < n; i++) {
        getline(cin, arr[i]);
        // Populate arr
        // Read a string value and store it in arr[i]
    }
    
    // Modify arr
    // Set the element at position 'index' to 'newElement'
    arr[index] = newElement;
    
    // print arr
    // Loop through the array and print each element
    for (int i = 0; i < n; i++){
        cout << arr[i] << endl;
    }

    return 0;
}
