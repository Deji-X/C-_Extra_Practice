/*
C++ vectors provide two main ways to access individual elements:

Square bracket operator []:

std::vector<int> numbers = {10, 20, 30, 40};
int first = numbers[0];    // Gets 10
int third = numbers[2];    // Gets 30
The .at() method:

int first = numbers.at(0);    // Gets 10
int third = numbers.at(2);    // Gets 30
The key difference is safety:[] can causeunpredictable behavior
if accessing invalid indices, while .at() throws an exception for
bounds-checking protection.

To access the last element, use data.size() - 1 as the index.
*/

