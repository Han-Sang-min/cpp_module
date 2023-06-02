// main.cpp
#include <iostream>
#include <vector>
#include "easyfind.hpp"

int main() {
    std::vector<int> numbers = {1, 2, 3, 4, 5};

    try {
        auto it = easyfind(numbers, 3);

        std::cout << "Found value: " << *it << "\n";
    } catch (const std::runtime_error& e) {
        std::cout << e.what() << "\n";
    }

    try {
        auto it = easyfind(numbers, 10);

        std::cout << "Found value: " << *it << "\n";
    } catch (const std::runtime_error& e) {
        std::cout << e.what() << "\n";
    }

    return 0;
}
