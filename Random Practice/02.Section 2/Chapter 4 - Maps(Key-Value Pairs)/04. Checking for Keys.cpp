/* Checking for Keys

The .count() method checks if a key exists in a map without creating new entries.
It returns 1 if the key exists and 0 if it doesn't:

std::map<std::string, int> scores;
scores["Alice"] = 95;

if (scores.count("Alice")) {
    std::cout << "Alice's score: " << scores["Alice"] << std::endl;
} else {
    std::cout << "Alice not found" << std::endl;
}

This prevents accidentally creating unwanted entries when checking for key existence,
unlike using the square bracket operator []
which automatically creates keys with default values.
*/
/*       CHECKING FOR KEYS
Create a program that manages a library book checkout system using a std::map.
Your program will track which books are available and use the .count() method to
safely check if books existbefore attempting to access their information.

The following inputs will be provided:

An integer n representing the number of books in the library
Then n pairs of inputs:
A string representing the book title
An integer representing the number of copies available
An integer m representing the number of book requests to check
Then m strings representing book titles to search for
Your program should:

Create a std::map<std::string, int> named library
Read the number of books and populate the map with book titles and their available copies
Read the number of book requests
For each book request, use the .count() method to check if the book exists in the library
Print the appropriate message based on whether the book is found or not
Use the following exact output format:

For each book request:

If the book exists: Book "[book title]" is available with [number] copies
If the book doesn't exist: Book "[book title]" is not available in the library
Use the .count() method in an if-statement to check for the book's existence before accessing its value.
If library.count(bookTitle) returns 1, the book exists and you can safely access library[bookTitle] to get the number of copies.
If it returns 0, the book doesn't exist in the library.
*/


#include <iostream>
#include <map>
#include <string>
using namespace std;

int main() {
    int n;
    cin >> n;

    map<string, int> library;

    for (int i = 0; i < n; i++) {
        string title;
        int copies;
        cin >> title >> copies;
        library[title] = copies;
    }

    int m;
    cin >> m;

    // Process each book request
    for (int i = 0; i < m; i++) {
        string bookTitle;
        cin >> bookTitle;

        if (library.count(bookTitle)) {
            cout << "Book \"" << bookTitle
                 << "\" is available with "
                 << library[bookTitle] << " copies"
                 << endl;
        } else {
            cout << "Book \"" << bookTitle
                 << "\" is not available in the library"
                 << endl;
        }
    }

    return 0;
}
