#include <iostream>
#include <string>
using namespace std;


double* calculateStats(double arr[], int size) {
    double sum = 0;
    double max = arr[0];
    double min = arr[0];

    for (int i = 0; i < size; i++) {
        sum += arr[i];

        if (arr[i] > max) {
            max = arr[i];
        }

        if (arr[i] < min) {
            min = arr[i];
        }
    }

    double average = sum / size;

    double* newArr = new double[4];

    newArr[0] = sum;
    newArr[1] = average;
    newArr[2] = max;
    newArr[3] = min;

    return newArr;
}

int main() {
    int n;

    cin >> n;
    cin.ignore();

    double arr[n];

    for (int i = 0; i < n; i++) {
        double val;
        std::cin >> val;
        arr[i] = val;
    }

    double* stats = calculateStats(arr, n);

    cout << "Sum: " << stats[0] << endl;
    cout << "Average: " << stats[1] << endl;
    cout << "Maximum: " << stats[2] << endl;
    cout << "Minimum: " << stats[3] << endl;

    delete[] stats;

    return 0;
}
