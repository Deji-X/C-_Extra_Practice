/*
Each test case has one input - an odd whole number.
Your task is to print n - pyramid using *, here are some examples:

1 - pyramid
*
5 - pyramid
*
***
*****
7 - pyramid
*
***
*****
*******
Input
odd integer n from user
1 <= n < 1000
Tips
Try starting from the small triangles
Check the hint if you are stuck ;)
*/

#include <iostream>
using namespace std;

int main() {
    int n;
    cin >> n;
    // Write your code below
    for (int stars = 1; stars <= n; stars +=2){
        for (int i = 0; i < stars; i++){
            cout << "*";
        }
        cout << endl;
    }
    
    
    return 0;
}
