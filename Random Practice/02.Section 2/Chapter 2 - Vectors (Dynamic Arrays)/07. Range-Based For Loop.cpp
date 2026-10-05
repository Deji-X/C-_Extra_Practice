/*
Range-Based For Loop


The range-based for loop iterates through a container without manual index management:

std::vector<std::string> names = {"Alice", "Bob", "Charlie"};

for (const std::string& name : names) {
    std::cout << name << std::endl;
}
& declares name as a reference (alias) to each element: no copying
const prevents accidental modification of the element inside the loop body
Works with any container that supports iteration
*/

#include <iostream>
#include <vector>
#include <string>

using namespace std;

int main(){
    int n;
    cin >> n;

    // Create a vector to store city names
    vector<string> cities;

    // Read city names and add them to the vector
    for (int i = 0; i < n; i++){
        string city;
        cin >> city;
        cities.push_back(city);
    }

    // TODO: Write yout code below
    // Use a range-based for loop to iterate through the cities vector
    // Print each city with its length using the specified format
    // After the loop, print the total number of cities processed

    return 0;
    
}
