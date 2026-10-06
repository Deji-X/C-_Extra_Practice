/*
In C++, code is split across multiple files and connected using #include directives.

Use angle brackets <> for system/library headers:
#include <iostream>
#include <string>

Use double quotes "" for your own header files:
#include "MyClass.h"

Example header file MyClass.h:
#include <string>
using namespace std;

class MyClass {
public:
          string greet() {
          return "Hello from MyClass!";
          }
};

Using the header in main.cpp:
#include <iostream>
#include "MyClass.h"
using namespace std;

int main(){
    MyClass obj;
    cout << obj.greet() << endl;
    return 0;
}

*/
/* ---------HEADER----------
MyClass.h
#include <string>

class MyClass{
public:
          string greet() {
          return "Hello from MyClass!";
          }
};
*/
#include <iostream>
#include <string>
#include "MyClass.h"
using namespace std;

int main() {
  string testCase;
  getline(cin, testCase);

  MyClass obj;
  cout << "Greeting: " << obj.greet() << endl;

  
  cout << "Test completed" << endl;
  return 0;
}
