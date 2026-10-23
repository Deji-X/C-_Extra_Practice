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
