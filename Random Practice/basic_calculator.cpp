#include <iostream>
#include <string>
#include <iomanip>
using namespace std;

int main() {
    double num1;
    double num2;
    cin >> num1;
    cin >> num2;

    double sum        = num1 + num2;
    double difference = num1 - num2;
    double product    = num1 * num2;
    double division   = num1 / num2;

    cout << "Calculator App" << endl;
    cout << "Sum: " << fixed << setprecision(2) << sum << endl;
    cout << "Difference: " << fixed << setprecision(2) << difference << endl;
    cout << "Product: " << fixed << setprecision(2) << product << endl;
    cout << "Division: " << fixed << setprecision(2) << division << endl;
    return 0;
}
