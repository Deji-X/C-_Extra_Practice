/* REMOVING ELEMENTS
Use std::find() from <algorithm> combined with .erase() to remove a specific element
from a vector.

#include <algorithm>
#include <vector>
vector<int> numbers = {10, 20, 30, 40};
auto it = find(numbers.begin(), numbers.end(), 20);
if (it != numbers.end()) {
    numbers.erase(it); // Removes element at iterator position
}

Always check if the iterator is not equal to end() before erasing to avoid undefined
behavior. The .erase() method requires an iterator, not a value directly.

*/
