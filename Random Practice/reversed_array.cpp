#include <iostream>
#include <vector>

int main() {
    int n;

    std::cin >> n;
    std::cin.ignore();
    double arr[n];

    for (int i = 0; i < n; i++) {
        double val;
        std::cin >> val;
        arr[i] = val;
    }

    double reverseArr[n];
    // Write your code below
    int j = 0;

    for (int i = n - 1; i >= 0; i--){
        reverseArr[j] = arr[i];
        j++;
    }
    


    for (int i = 0; i<n; i++) {
        std::cout << reverseArr[i] << std::endl;
    }
    return 0;
}
/*
#include <iostream>
#include <string>
using namespace std;

int main(){
  int n;

  cin >> n;
  cin.ignore();
  double arr[n];

  for (int i = 0; i < n; i++){
    double val;
    cin >> val;
    arr[i] = val;
  }

  double reversArr[n];
  for (int i = n - 1; i >= 0; i--){
    reverseArr[n - 1 - i] = arr[i];
  }
  for (int i = 0; i < n; i++){
    cout << reverseArr[i] << endl;
  }

  return 0;
}
*/
