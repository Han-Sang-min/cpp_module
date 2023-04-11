#include <iostream>

class Base1 {
public:
    Base1() {
        std::cout << "Base1 constructor" << std::endl;
    }

    // 가상 소멸자 사용
    ~Base1() {
        std::cout << "Base1 destructor" << std::endl;
    }
};

class Base : public Base1{
public:
    Base() {
        std::cout << "Base constructor" << std::endl;
    }

    // 가상 소멸자 사용
    virtual ~Base() {
        std::cout << "Base destructor" << std::endl;
    }
};

class Derived : public Base {
public:
    Derived() : Base() {
        std::cout << "Derived constructor" << std::endl;
    }

    // 기반 클래스의 소멸자가 virtual이므로, 파생 클래스의 소멸자도 자동으로 가상 소멸자가 됩니다.
    ~Derived() {
        std::cout << "Derived destructor" << std::endl;
    }
};

int main() {
    Base1 *basePtr = new Derived();
    delete basePtr; // 올바른 소멸자 호출 순서: Derived destructor -> Base destructor
    return 0;
}
