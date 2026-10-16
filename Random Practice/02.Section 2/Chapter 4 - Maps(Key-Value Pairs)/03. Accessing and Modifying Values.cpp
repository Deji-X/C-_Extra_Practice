/*
Accessing and Modifying Values



Use the square bracket [] operator to access and modify map values:

std::map<std::string, int> scores;
scores["Alice"] = 95;           // Set value
int aliceScore = scores["Alice"]; // Get value
scores["Alice"] = 98;           // Update value
If you use [] with a key that doesn't exist,
it automatically creates a new element with a default value:

int bobScore = scores["Bob"]; // Creates "Bob" with value 0
Use a range-based for loop to iterate through all key-value pairs.
Each pair has .first for the key and .second for the value:

for (auto pair : scores) {
    // pair.first  = key (e.g. "Alice")
    // pair.second = value (e.g. 98)
}*/

#include <iostream>
#include <map>
#include <string>
#include <vector>

using namespace std;

int main() {
    // Read the number of initial products
    int n;
    cin >> n;
    
    // Create the inventory map
    map<string, int> inventory;
    
    // Read initial products and quantities
    for (int i = 0; i < n; i++) {
        string product;
        int quantity;
        cin >> product >> quantity;
        // TODO: Add the product to the inventory map
        inventory[product] = quantity;
    }
    
    // TODO: Print the initial inventory
    cout << "Initial Inventory:" << endl;

    for (const auto& item : inventory) {
        cout << item.first << ": " << item.second << endl;
    }
    
    // Read product to update and new quantity
    string updateProduct;
    int newQuantity;
    cin >> updateProduct >> newQuantity;
    
    // TODO: Update the product quantity in the map
    inventory[updateProduct] = newQuantity;
    
    // TODO: Print the updated inventory
    cout << "Updated Inventory:" << endl;

    for (const auto& item : inventory) {
        cout << item.first << ": " << item.second << endl;
    }
    
    return 0;
}
