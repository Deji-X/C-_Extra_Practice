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

int main(){
    int n;
    cin >> n;

    // Create a vector to store product names
    vector<string> products;

    // Read product names and add them to the vector
    for (int i = 0; i < n; i++){
        string product;
        cin >> product;
        products.push_back(product);
    }

    // TODO: Write your code below.
    // Use a traditional for loop to iterate through the vector.
    for (int i = 0; i < products.size(); i++)
        
    // And print each product with its position number
    {
        cout << "Product " << (i+1) << ": " << products[i] << endl;
    }

    return 0;
}
