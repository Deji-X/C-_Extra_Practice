/* Create a function named calculate that takes two integers and
a character as arguments (parameters).
The character represents an arithmetic operation: +, -, *, or /.
Perform the corresponding operation on the two integers and
print the result in the format: [num1] [operation] [num2] = [result].
For division (/), perform integer division (ignore remainders).*/
#include <iostream>
#include <string>
using namespace std;

void calculation(int a, int b, char op){
  if (op == '+'){
    cout << a << ' + ' << b << ' = ' << a + b << endl;
  }
  else if (op == '-'){
    cout << a << ' - ' << b << ' = ' << a - b << endl;
  }
  else if (op == '*'){
    cout << a << ' * ' << b << ' = ' << a * b << endl;
  }
  else if (op == '/'){
    cout << a << ' / ' << b << ' = ' << a / b << endl;
  }
}

int main(){
  int a, b;
  char op;

  cin >> a >> b >> op;

  calculation(a, b, op);

  return 0;
  /* USING SWITCH
  
#include <iostream>
using namespace std;

void calculate(int a, int b, char op) {
    switch(op) {
        case '+':
            cout << a << " + " << b << " = " << a + b;
            break;
        case '-':
            cout << a << " - " << b << " = " << a - b;
            break;
        case '*':
            cout << a << " * " << b << " = " << a * b;
            break;
        case '/':
            cout << a << " / " << b << " = " << a / b;
            break;
    }
}

int main() {
    int a, b;
    char op;
    
    cin >> a >> b >> op;
    
    // Call the function with a, b, and op as arguments
    calculate(a, b, op);
    
    return 0;
}
  
  */
}
