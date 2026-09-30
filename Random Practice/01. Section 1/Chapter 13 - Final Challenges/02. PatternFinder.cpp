/*
Create a program that receives two integers that indicate the following
size of two arrays of integers as input and
determines if the second array appears as a pattern within the first array
(in consecutive order).

A pattern exists when all elements of the second array appear together,in the same order,
somewhere within the first array, like finding a substring within a string.

For example:

int arr1[] = {1, 2, 3, 4, 5, 6, 7};
int arr2[] = {3, 4, 5};
// Should return true
int arr1[] = {5, 6, 7, 8, 9};
int arr2[] = {6, 8};
// Should return false (not consecutive)
*/

#include <iostream>
#include <vector>
#include <string>

int main() {
    int n1;
    int n2;

    std::cin >> n1;
    std::cin >> n2;
    std::cin.ignore();
    int arr1[n1];
    int arr2[n2];

    for (int i = 0; i < n1; i++) {
        int val;
        std::cin >> val;
        arr1[i] = val;
    }

    for (int i = 0; i < n2; i++) {
        int val;
        std::cin >> val;
        arr2[i] = val;
    }

    // Write your code below using arr1 and arr2
    bool found = false;
    // If arr2 is larger than arr1, pattern can't exist
    if (n2 > n1) {
        std::cout << "false" << std::endl;
        return 0;
    }
    // Check each possible starting position in arr1
    for (int i = 0; i <= n1 - n2; i++) {
        bool matchFound = true;
        // Compare elements starting from position i
        for (int j = 0; j < n2; j++) {
            if (arr1[i + j] != arr2[j]) {
                matchFound = false;
                break;
            }
        }
        
        if (matchFound) {
            found = true;
            break;
        }
    }
    
    std::cout << (found ? "true" : "false") << std::endl;

    return 0;
}
