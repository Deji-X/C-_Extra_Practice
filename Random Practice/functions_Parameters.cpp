/*
Function arguments are values passed into a function when calling it. Define arguments inside parentheses with their data types:

return_type function_name(data_type arg1, data_type arg2, ...) {
    // code
}
Call a function by passing values as arguments:

function_name(value1, value2, value3, ...);
Example function with one argument:

void isEven(int number) {
    if (number % 2 == 0) {
        std::cout << number << " is even" << std::endl;
    } else {
        std::cout << number << " is odd" << std::endl;
    }
}

int main() {
    isEven(15);  // calling function with argument
    return 0;
}
Note: Passing too many arguments to a function will cause the program to fail.

challenge icon
Challenge

Easy
Write a program that gets two int numbers as input. The input numbers are the arguments of the function. 

Create a function that gets two arguments, calculates the product of them, and prints it. Name the function however you like.

Call the function with these input numbers.*/
#include <iostream>
#include <string>
using namespace std;
// Function declaration
void prodAB(int a, int b){
        cout << a * b << endl;

}


int main() {
    int a, b;
    cin >> a >> b;
    // Call the function with a and b as arguments
    prodAB (a, b);
    return 0;
}
