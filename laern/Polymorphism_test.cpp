#include <iostream>

class Animal {
public:
    Animal() {
        std::cout << "Animal constructor called." << std::endl;
    }
};

class Dog : public Animal {
public:
    Dog() {
        std::cout << "Dog constructor called." << std::endl;
    }
};

int main() {
    Animal Dog_ = Dog a; // Dog 객체를 생성합니다.
    // // Animal *Animal_ = new Animal; // Dog 객체를 생성합니다.
    // std::cout << sizeof(*Dog_) << std::endl;
    // std::cout << sizeof(*Animal_) << std::endl;
    // delete Dog_;
    // delete Animal_;
    return 0;
}
