/*
insert(pos, str): inserts string str at position pos

replace(pos, len, str): replaces len characters starting at postion pos with string str

substr(pos, len): Returns substring starting at position pos with length len

append(str): Adds string str to the end

std::string str = "Hello, World!";

str.insert(5, " C++");
// "Hello C++, World!"

str.replace(7, 5, "Universe");
// "Hello, Universe!"

str.substr(0, 5);
// "Hello"

str.append(" This is universe");
// "Hello, World! This is universe"
*/
/*
Create a function named stringOperations that takes a string
as input and performs the following operations using string functions:

Prints the length of the string.
Appends the string " - Modified" to the original string.
Inserts the string "C++ " at the beginning of the string.
Extracts a substring of length 5 starting at position 5.
Replaces the occurrence of the substring of length 5 start at
position 5 with the string "Awesome".
Prints the modified string after each operation.
Use the following format:

Length: [Length of string]
Append: [After Appending]
Insert: [After Insert]
Extract: [The extracted string]
Replace: [After replacing]
*/ 

#include <iostream>
#include <string>
using namespace std;

void stringOperations(string str){
  // 1. Print length of the string
  cout << str.length() << endl;
}

int main(){
  
}
