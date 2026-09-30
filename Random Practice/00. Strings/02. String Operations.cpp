/*
In C++, concatenate strings use the + operator:
string str1 = "Hello";
string str2 = "World";
string result = str1 + " " + str2;
OUTPUTS: Hello World

USE THE += OPERATOR TO APPEND STRINGS:
string str = "Hello";
str += " ";
str += "World";
OUTPUTS: Hello World

GET STRING LENGTH USING length() or size():
string str = "Hello";
int len = str.length(); OR str.size();
RETURNS: 5
*/

/*
String Operations-Challenge

Create a function named concatenateStrings that takes two std::string arguments,str1
and str2.
The function should concatenate str1, a space, and str2 together
and return the resulting string. In the main function, declare two strings,
firstName and lastName, with your first and last names, respectively.
Call concatenateStrings with firstName and lastName as arguments,
and store the result in a variable named fullName. Print fullName to the console.
*/
#include <iostrem>
#include <cstring>
#include <string>

using namespace std;

string concatenateStrings(string str1, string str2){
 string result = str1 + " " + str2;
  return result;
 // return str1 " " + str2; //this combines the string and return line above.
}

int main(){
  string firstName;
  string lastName;
  getline(cin, firstName);
  getline(cin, lastName);

  // Call concatenateStrings and store the result in fullName
  string fullName = concatenateStrings(firstName, lastName);

  //Print fullname
  cout << fullName << endl;

  return 0;
}
