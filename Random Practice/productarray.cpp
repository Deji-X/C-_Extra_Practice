#include <iostream>
#include <string>
using namespace std;

double prod (double arr[], int size){
  double product = 1;

    for (int i = 0; i < size; i++) {
        product *= arr[i];
    }

    return product;
}

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

  double result = prod(arr,n);
  cout << "Product of array elements: " << result << endl;
  
  return 0;
}
