/* ITERATING WITH A FOR LOOP
Use a traditional for loop to iterate through a vector by combining .size() with 
index-based access:

vector<string> names = {"Alice", "Bob", "Charlie"};

for (int i = 0; i < names.size(); i++){
    cout << names[i] << endl;
}

The loop condition i < names.size() ensures you don't go beyond the vector's bounds,
while names[i] accesses each element using the current index.
The index variables gives you precise control over which element you're working with and
allows you to know the position of each element.

*/
#include <iostream>
#include <vector>
#include <string>

using namespace std;
