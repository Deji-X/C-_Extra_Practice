#include <iostream>
using namespace std;
int main() {
    int age, height;
    bool hasAdult;
    cin >> age >> height >> hasAdult; // Don't change this line

//If too young: Sorry, you are too young
//If not tall enough: Sorry, you are not tall enough
//If under 15 and no adult: Sorry, you need an adult with you
//If under 15 with adult: You can ride with adult supervision!
//If 15 or older and tall enough: You can ride by yourself!

    // Write your code below
    /*
    if (age < 12) {
        cout << "Sorry, you are too young";
    }
    else if (height < 150){
        cout << "Sorry, you are not tall enough";
    }
    else if (age < 15 && !hasAdult){
        cout << "Sorry, you need an adult with you";
    }
    else if (age < 15 && hasAdult){
        cout << "You can ride with adult supervision!";
    }
    else if(age > 15 && height > 150){
        cout << "You can ride by yourself!";
    }*/
    if (age < 12) {
        cout << "Sorry, you are too young";
    }
    else {
        if (height <= 150) {
            cout << "Sorry, you are not tall enough";
        }
        else {
            if (age < 15) {
                if (hasAdult) {
                    cout << "You can ride with adult supervision!";
                }
                else {
                    cout << "Sorry, you need an adult with you";
                }
            }
            else {
                cout << "You can ride by yourself!";
            }
        }
    }
    
    return 0;
}
