/* 클래스 멤버 주소 확인 */

#include <iostream>
#include <cstdint>

class Sample {
public:
    int a; //4
    char b; //1
    float c; //4

    void foo() {
        std::cout << "foo() called" << std::endl;
    }
};

int main() {
    Sample obj;

    // 객체 메모리 구조를 확인하기 위해 멤버 변수의 주소를 출력합니다.
    std::cout << "Address of obj: " << reinterpret_cast<uintptr_t>(&obj) << std::endl;
    std::cout << "Address of obj.a: " << reinterpret_cast<uintptr_t>(&obj.a) << std::endl;
    std::cout << "Address of obj.b: " << reinterpret_cast<uintptr_t>(&obj.b) << std::endl;
    std::cout << "Address of obj.c: " << reinterpret_cast<uintptr_t>(&obj.c) << std::endl;

    // 멤버 함수의 주소를 출력합니다.
    void (Sample::*memFn)() = &Sample::foo;
    uintptr_t memFnAddress = reinterpret_cast<uintptr_t>(*(uintptr_t*)&memFn);
    std::cout << "Address of obj.foo: " << memFnAddress << std::endl;

    return 0;
}
