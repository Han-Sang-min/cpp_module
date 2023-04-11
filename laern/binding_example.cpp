#include <iostream>

class Base {
public:
    void staticBinding() {
        std::cout << "Static binding function called" << std::endl;
    }

    virtual void dynamicBinding() {
        std::cout << "Dynamic binding function called" << std::endl;
    }
};

int main() {
    Base base;
    Base* basePtr = &base;

    basePtr->staticBinding(); // 정적 바인딩된 함수 호출
    basePtr->dynamicBinding(); // 동적 바인딩된 함수 호출

    return 0;
}
