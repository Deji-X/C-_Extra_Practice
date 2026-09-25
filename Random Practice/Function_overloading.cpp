/*
Function Overloading
Function overloading allows multiple functions with the same name but different parameters.
The compiler selects the appropriate function based on argument types:*/
/*
int add(int a, int b) {
    return a + b;
}
double add(double a, double b) {
    return a + b;
}
int main() {
    int sum1 = add(5, 3); // Calls int version
    double sum2 = add(2.5, 3.7); // Calls double version
    return 0;
}*/
/*
Functions must differ in their parameter lists -
return type alone is not sufficient for overloading.
*/
#include <iostream>
#include <string>
using namespace std;


int sigma(int n) {
    // Write your code below
    int sum = 0;
    for(int i = 1; i <= n; i++) {
        sum += i;
    }
    return sum;

}

int main() {
    int n;
    cin >> n;
    int res = sigma(n);
    cout << res;
    return 0;
}

int main(){
    retrun 0;
}
