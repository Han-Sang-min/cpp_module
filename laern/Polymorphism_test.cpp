/* 클래스 메모리 구조 */

#include <iostream>

class Base {
public:
    Base() : x(1) {}
    virtual void dynamicBinding() { std::cout << "Base::dynamicBinding()" << std::endl; }

    int x;
};

class Derived : public Base {
public:
    Derived() : y(2) {}
    void dynamicBinding() { std::cout << "Derived::dynamicBinding()" << std::endl; }

    int y;
};

int main() {
    Base *derivedObj = new Derived;

    // 클래스의 메모리 구조 출력
    std::cout << "Derived object memory layout:" << std::endl;

    // 가상 함수 포인터 출력
    uintptr_t *vtablePtr = *reinterpret_cast<uintptr_t **>(&derivedObj);
    std::cout << "vtablePtr: " << vtablePtr << std::endl;

    // 멤버 변수 주소 출력
    std::cout << "Base::x address: " << &derivedObj->x << std::endl;
    std::cout << "Derived::y address: " << (&derivedObj->x + 1) << std::endl;

    return 0;
}
