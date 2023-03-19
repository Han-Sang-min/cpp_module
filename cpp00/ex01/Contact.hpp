#pragma once
#include "Common.hpp"

class Contact {
public:
	Contact();
	~Contact();
	Contact(const Contact& other);
	Contact& operator=(const Contact& other);
	bool setInfo(info info);
	void printInfo();
	void printContact(int idx);
private:
	bool checkPhoneNumber(const std::string &phone_number);
	std::string truncateString(const std::string &str);
	void printForm(std::string string);
	info info;
};
