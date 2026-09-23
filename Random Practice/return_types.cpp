//THIS KICKED MY BEHIND
/*
Each test case has three inputs.

The first input indicates how many times to do iterations, and the last two inputs are numbers that we will do operations on.

Create a function that receives two arguments and returns the bigger number of the two. if both are equal then return one of them.

Iterate iterations times and for each iteration do:

Call the function with num1, num2, and save the result in a variable.
Divide the bigger number of the two by 2, and then replace the original larger variable with the new result value.
print the new value.  
Continue doing it until the program iterated iterations times or one of the numbers is smaller than 2.
Remember: The bigger number can change! Every time you divide a number, it gets smaller. In the next iteration of the loop, the number that was previously smaller might now be the larger one. Your code should check which number is currently larger at the start of every iteration.*/
#include <iostream>

double bigger(double arg1, double arg2) {
    if (arg1 > arg2) {
        return arg1;
    } else {
        return arg2;
    }
}

int main() {
    int iterations;
    double num1, num2;
    std::cin >> iterations >> num1 >> num2;

    for (int i = 0; i < iterations; i++) {
        if (num1 < 2 || num2 < 2) {
            break;
        }
        double big = bigger(num1, num2);
        if (big == num1) {
            num1 /= 2;
            std::cout << num1 << std::endl;
        } else {
            num2 /= 2;
            std::cout << num2 << std::endl;
        }
    }
    return 0;
}
