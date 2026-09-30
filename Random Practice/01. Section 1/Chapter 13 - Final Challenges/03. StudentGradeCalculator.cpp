/*
Create a function named calculateAverageGrade that takes an array of integers
(representing student grades) and the size of the array as input and
returns the average grade as a double. The function should do the following:

Calculate the sum of all grades in the array.
Calculate the average grade by dividing the sum by the number of grades.
Return the average grade
Finally the main function should print the result using the following format:
Average grade: [The result].
*/
#include <iostream>



double calculateAverageGrade(int grades[], int size) {
  int sum = 0;

  for (int i = 0; i < size; i++){
    sum += grades[i];
  }
    double average = (double)sum / size;

  return average;
    // Write your code here
  
}

int main() {
    int n;

    std::cin >> n;
    std::cin.ignore();
    int arr[n];

    for (int i = 0; i < n; i++) {
        int val;
        std::cin >> val;
        arr[i] = val;
    }


    double averageGrade = calculateAverageGrade(arr, n);
    std::cout << "Average grade: " << averageGrade << std::endl;
    return 0;
}
