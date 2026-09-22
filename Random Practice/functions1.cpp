//Declaring a Function.
#include <iostream>
#include <string>
using namespace std;

void numFunct(){
    int sum = 0;

    for(int i = 1; i <=1000; i++){
        sum += i;
    }
    cout << sum << endl;
}

    int main(){
        int number;
        cin >> number;

        for (int i = 0; i < number; i++ ){
            numFunct();

        }
    return 0;
