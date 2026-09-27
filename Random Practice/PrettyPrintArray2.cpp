#include <iostream>

int main() {
    int n;

    std::cin >> n;
    std::cin.ignore();
    std::string arr[n];
    
    for (int i = 0; i < n; i++) {
        std::string val;
        std::cin >> val;
        arr[i] = val;
    }
    
    // Print the array beautifully
    for (int i = 0; i < n; i++) {
        if (i == 0) {
            std::cout << "[";
        }
        std::cout << arr[i];

        if (i < n - 1) {
            std::cout << ", ";
        }

        if (i == n - 1) {
            std::cout << "]";
        }
    }
    return 0;
}
