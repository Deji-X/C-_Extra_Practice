#include <iostream>
#include <string>
using namespace std;

int main() {
    int n;

    cin >> n;
    cin.ignore();
    string arr[n];
    
    for (int i = 0; i < n; i++) {
        string val;
        cin >> val;
        arr[i] = val;
    }
    
    // Print the array beautifully
    cout << "[";

    for (int i = 0; i < n; i++) {
        cout << arr[i];

        if (i < n - 1) {
            cout << ", ";
        }
    }

    cout << "]";

    return 0;
}
