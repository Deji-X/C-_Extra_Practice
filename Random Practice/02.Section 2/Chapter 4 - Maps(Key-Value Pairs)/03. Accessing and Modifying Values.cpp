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
