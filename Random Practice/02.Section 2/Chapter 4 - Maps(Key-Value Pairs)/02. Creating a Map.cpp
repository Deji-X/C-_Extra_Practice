/* CREATING A MAP
To create a std::map, specify the key and value types in angle brackets:
std::map<KeyType, ValueType> mapName;

Example with string keys and integer values:
std::map<std::string, int> studentScores;

Add elements using square bracket notation:
studentScores["Alice"] = 95;
studentScores["Bob"]   = 87;
studentScores["Carol"] = 92;

Iterate over a map using a range-based 'for' loop. Each element is a pair:
use '.first' to access the key and '.second' to access the value:
for (const auto& pair : studentScores){
    cout << pair.first << ": " << pair.secpnd << endl;
}

'auto' automatically deduces the type of each element, and 
'const auto&' avoids unnecessart copying.
*/
#include <iostream>
#include <map>
#include <string>
#include <vector>
using namespace std;

int main(){
    // Read the number of students
    int n;
    cin >> n;

    // Create the map to store grades
    map<string, int> grades;

    //Read each student's name and score, then add to the map
    for (){
        
    }


    // Print the results
    cout << "Student Grades: " << endl;

    // Use a range-based for loop to print each student's grade.
    for (const auto& pair : grades){
        cout << pair.first << ": " << pair.second << endl;
    }

    // Print total number of students.
    cout << "Total stidents: " << grades.size() << endl;

    return 0;
}
