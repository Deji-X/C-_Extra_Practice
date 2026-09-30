/* STRING FUNCTIONS PART 2
Useful string functions in C++:
string str = "Hello, World!";

erase(pos, len): Removes len characters starting at position pos
str.erase(5, 2);
//Result: "HelloWorld!"

find(str): Returns the position of the first occurence of str(returns -1 if not found)
int pos = str.find("World");
// pos = 7 (position where "World" starts)

clear(): Removes all characters from the string
st.clear();
//Result: "" (empty string)

empty(): Returns true if the string is empty, false otherwise
bool isEmpty = str.empty();
//Returns true if str has no characters
*/
/*
Create a function named stringSearchOperations that takes a string as input and
performs the following operations using string functions:

Finds and prints the position of the first space character in the string.
Erases 4 characters from position 5.
Checks if the string contains the word "You" and prints "Found" or "Not Found".
Clears the string and checks if it's empty.
Prints the results after each operation.
Use the following format:

Space Found At: [Position of space]
After Erase: [String after erasing]
Contains You: [Found/Not Found]
Is Empty: [true/false]
*/

#include <iostream>
#include <string>
using namespace std;

void stringSearchOperations(string str) {
    // Find first space
    cout << "Space Found At: " << str.find (" ") << endl;
    

    // Erase 4 characters from position 5
    cout << "After Erase: " << str.erase(5, 4) << endl;

    // Check if contains "You"
    if (str.find("You") != string::npos){
        cout << "Contains You: Found" << endl; 
    } else {
        cout << "Contains You: Not Found" << endl;
    }

    // Clear string and check if empty
    str.clear();
    bool isEmpty = str.empty();

    cout << boolalpha;
    cout << "Is Empty: " <<  isEmpty <<endl;
}

int main() {
    std::string str;
    std::getline(std::cin, str);
    stringSearchOperations(str);
    return 0;
}
