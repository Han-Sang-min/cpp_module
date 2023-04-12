/* overiding 런타임의 동작 확인 */

#include <iostream>

class Animal {
public:
    Animal() {
        Animal *test = this;
        uintptr_t *vtablePtr = reinterpret_cast<uintptr_t *>(*(uintptr_t *)test);

        void (*makeSoundFunction)() = reinterpret_cast<void (*)()>(vtablePtr[0]);
        makeSoundFunction();
        makeSoundFunction = reinterpret_cast<void (*)()>(vtablePtr[1]);
        makeSoundFunction();
    }
    virtual void makeSound() { std::cout << "Animal sound" << std::endl; }
	virtual void test() { std::cout << "Just for test" << std::endl; }
    // virtual ~Animal() {
    //     std::cout << "destructors calling" << std::endl;
    // }
};

class Dog : public Animal {
public:
    virtual void makeSound() { std::cout << "Dog sound" << std::endl; }
    virtual void test2() { std::cout << "Just for test2" << std::endl; }
};

int main() {
    Animal *animalPtr = new Dog;

    uintptr_t *vtablePtr = reinterpret_cast<uintptr_t *>(*(uintptr_t *)animalPtr);

    void (*makeSoundFunction)() = reinterpret_cast<void (*)()>(vtablePtr[0]);
    makeSoundFunction();
	makeSoundFunction = reinterpret_cast<void (*)()>(vtablePtr[1]);
	makeSoundFunction();
    makeSoundFunction = reinterpret_cast<void (*)()>(vtablePtr[2]);
	makeSoundFunction();
    makeSoundFunction = reinterpret_cast<void (*)()>(vtablePtr[3]);
	makeSoundFunction();
    return 0;
}
