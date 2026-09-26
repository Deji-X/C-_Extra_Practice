#include <iostream>
#include <string>
using namespace std;

int main(){

  string shoppingList[] = {"bread", "eggs", "milk", "butter"};

cout << "Shopping List:" << endl;
    for (int i = 0; i < size(shoppingList); i++) {
        cout << shoppingList[i] << endl;
    }
    return 0;
}

