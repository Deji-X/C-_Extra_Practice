#include <iostream>
#include <string>
using namespace std;

void printNTimes(string message, int n) {
    for (int i = 0; i < n; i++){
        cout << message << endl;
    }
    // Write you code here
}

int main() {
    string msg;
    int n;
    getline(cin, msg); 
    cin >> n;

    printNTimes(msg, n);
    return 0;
}
