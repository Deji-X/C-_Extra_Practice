/*
char str1[] = "Hello"; declaration without specific size

char str2[6] = {'w','o','r','l','d','\0'}; Explicit initialization with characters.

char str3[10] = "Coddy";

#include <cstring> ... To use C-style string functions.

Get string length using 'strlen()':
cout << strlen(str1); // OUTPUT: 5.

*/
#include <iostream>
#include <cstring>
#include <string>
using namespace std;

void printStringInfo (char str[]){
  // Print the string
  cout << "String: " << str << endl;
  
  // Print the length of the string
  cout << "Length: " << strlen(str) << endl;
  
  // Print the character at index 4
  cout << "Character at index 4: " << str[4] << endl;
  
  // Modify the first character to 'X'
  str[0] = 'X';
  
  // Print the modified string
  cout << "Modified string: " << str << endl;
}

int main(){
  char message[] = "Hello, World!";

  printStringinfo(message);
  
  return 0;
}
