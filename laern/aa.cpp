#include <iostream>

// 기반 클래스(Base Class)
class Animal {
public:
	Animal() : x(1) {};
	Animal(int x) : x(x) {
		std::cout << "Animal vtable pointer: " << *(reinterpret_cast<void **>(this)) << std::endl;
	}
	void test() {
		std::cout << "just for test" << std::endl;
	}
    virtual void make_sound() {
        std::cout << "The animal makes a generic sound" << std::endl;
    }
	virtual void make_sound2() const {
        std::cout << "The animal makes a generic sound" << std::endl;
    }
	int x;
};

// 파생 클래스(Derived Class)
class Dog : public Animal {
public:
	Dog(int y) : y(y) {
		std::cout << "Dog vtable pointer: " << *(reinterpret_cast<void **>(this)) << std::endl;
	}
    virtual void make_sound() const {
        std::cout << "The dog barks" << std::endl;
    }
	int y;
};

int main() {
	int a;
	int *b = &a;
	std::cin >> a;
	Animal* ptr = new Animal(a); // 파생 클래스 객체 생성
    Dog* dog_ptr = new Dog(a); // 파생 클래스 객체 생성

	std::cout << "Address of x: " << &dog_ptr->x << std::endl;
	std::cout << "Address of y: " << &dog_ptr->y << std::endl;
    // 가상 함수 테이블 포인터 출력
    std::cout << "Dog vtable pointer: " << (reinterpret_cast<void *>(dog_ptr)) << std::endl;
	std::cout << "Animal vtable pointer: " << (reinterpret_cast<void *>(ptr)) << std::endl;
	void (Animal::*test)(void) = &Animal::test;
	std::cout << "Animal static function pointer: " << (reinterpret_cast<void *&>(test)) << std::endl;
    delete dog_ptr;

    return 0;
}
