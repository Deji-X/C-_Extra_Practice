#include <iostream>
#include <string>
using namespace std;

int main(){
  int age;
  string name;

  
  cout << "Enter your age" << endl;
  cin >> age;

  cout << "Enter your name" << endl;
  cin.ignore(); //always used to after a 'cin' because it deletes the new line \n automatically added.
  getline(cin, name);

  cout << "Hello World" << endl;
  cout << "My name is "<< name << endl;
  cout << "I am " << age << endl;

  return 0;

}
