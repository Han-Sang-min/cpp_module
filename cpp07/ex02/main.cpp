#include "Array.hpp"
#include <iostream>

void testInt() {
    std::cout << "Testing integer Array:\n";
    Array<int> intArray(3);

    intArray[0] = 1;
    intArray[1] = 2;
    intArray[2] = 3;

    for (unsigned int i = 0; i < intArray.size(); i++) {
        std::cout << intArray[i] << " ";
    }
    std::cout << "\n";

    try {
        std::cout << intArray[3];
    } catch (std::exception& e) {
        std::cout << "Caught exception: " << e.what() << "\n";
    }
}

void testDouble() {
    std::cout << "Testing double Array:\n";
    Array<double> doubleArray(3);

    doubleArray[0] = 1.1;
    doubleArray[1] = 2.2;
    doubleArray[2] = 3.3;

    for (unsigned int i = 0; i < doubleArray.size(); i++) {
        std::cout << doubleArray[i] << " ";
    }
    std::cout << "\n";

    try {
        std::cout << doubleArray[3];
    } catch (std::exception& e) {
        std::cout << "Caught exception: " << e.what() << "\n";
    }
}

void testCopy() {
    std::cout << "Testing copying Array:\n";
    Array<int> originalArray(3);

    originalArray[0] = 1;
    originalArray[1] = 2;
    originalArray[2] = 3;

    Array<int> copiedArray(originalArray);

    copiedArray[0] = 10;

    std::cout << "Original array: ";
    for (unsigned int i = 0; i < originalArray.size(); i++) {
        std::cout << originalArray[i] << " ";
    }
    std::cout << "\n";

    std::cout << "Copied array: ";
    for (unsigned int i = 0; i < copiedArray.size(); i++) {
        std::cout << copiedArray[i] << " ";
    }
    std::cout << "\n";
}

int main() {
    testInt();
    testDouble();
    testCopy();

    return 0;
}
