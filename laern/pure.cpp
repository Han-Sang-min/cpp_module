/* 순수 가상 함수 null check */

#include <iostream>

class Base {
public:
	Base() {
		std::cout << this << std::endl;
	}
    virtual void pureVirtualFunction() = 0;
};

class Derived : public Base {
public:
    void pureVirtualFunction() override {
        std::cout << "Derived::pureVirtualFunction()" << std::endl;
    }
};

int main() {
    Derived derived;
    Base *basePtr = &derived;

    // vtable 주소 출력
    uintptr_t **vtablePtr = reinterpret_cast<uintptr_t **>(basePtr);
    std::cout << "vtable address: " << *vtablePtr << std::endl;

    // 순수 가상 함수 주소 출력
    uintptr_t pureVirtualFunctionAddress = (*vtablePtr)[0];
    std::cout << "Base::pureVirtualFunction() address: " << reinterpret_cast<void *>(pureVirtualFunctionAddress) << std::endl;

    if (pureVirtualFunctionAddress == 0) {
        std::cout << "The address is nullptr." << std::endl;
    } else {
        std::cout << "The address is not nullptr." << std::endl;
    }

    return 0;
}
