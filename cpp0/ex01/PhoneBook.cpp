#include <iostream>

typedef struct
{
	std::string first_name;
	std::string last_name;
	std::string nickname;
	std::string phone_number;
	std::string darkest_secret;
}	info;

class Contact {
public:
	// 기본 생성자
	Contact() {}
	// 소멸자
	~Contact() {}
	// 복사 생성자
	Contact(const Contact& other) {}
	// 대입 연산자 오버로딩
	Contact& operator=(const Contact& other) {
		if (this == &other) {
			return *this; // 자기 자신에 대한 대입을 처리합니다.
		}
		// 기존 리소스 해제 및 멤버 변수 복사, 새로운 리소스 할당 등
		return *this;
	}
	void setInfo(info info) {
		this->info = info;
	}
	void printInfo() {
		std::cout << "First Name: " << info.first_name << std::endl;
		std::cout << "Last Name: " << info.last_name << std::endl;
		std::cout << "Nickname: " << info.nickname << std::endl;
		std::cout << "Phone Number: " << info.phone_number << std::endl;
		std::cout << "Darkest Secret: " << info.darkest_secret << std::endl;
	}
private:
	info info;
};

class PhoneBook {
public:
    // 기본 생성자
    PhoneBook() : current_size(0), current_index(0) {}
    // 소멸자
    ~PhoneBook() {}
    // 복사 생성자
    PhoneBook(const PhoneBook& other) {}
    // 대입 연산자 오버로딩
    PhoneBook& operator=(const PhoneBook& other) {
        if (this == &other) {
            return *this; // 자기 자신에 대한 대입을 처리합니다.
        }
        return *this;
    }

private:
    Contact contact[8];
	int current_size;
	int current_index;
};

int main()
{

}