#include <iostream>
#include <string>


int main() {
    int n;
    int index;
    std::string newElement;
    
    std::cin >> n;
    std::cin >> index;
    std::cin.ignore();
    std::getline(std::cin, newElement);
    std::string arr[n];
    
    for (int i = 0; i < n; i++) {
        // Populate arr
        std::string val;
        std::cin >> val;
        arr[i] = val;
    }
    
    // Modify arr
    arr[index] = newElement;
    
    // print arr
    for (int i = 0; i < n; i++) {
        std::cout << arr[i] << std::endl;
    }

    return 0;
}
