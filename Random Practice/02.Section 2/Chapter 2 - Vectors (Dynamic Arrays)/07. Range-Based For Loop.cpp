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
