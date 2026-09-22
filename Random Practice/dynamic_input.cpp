/*
Write a program that first accepts an integer n,
representing how many additional whole numbers will be entered next.
Then, read exactly n whole numbers from the input.
Finally, compute and print the sum of those n numbers (excluding the first input).
*/

#include <iostream>

int main() {
    int numLoops;
    std::cin >> numLoops;
    int sum = 0;
    int number;

    for (int i = 0; i < numLoops; i++){
        std::cin >> number;
        sum += number;
    }
    std::cout << sum << std::endl;

    return 0;
}
