#include "Contact.hpp"

Contact::Contact() {}
Contact::~Contact() {}
Contact::Contact(const Contact& other) {
	this->info.first_name = other.info.first_name;
	this->info.last_name = other.info.last_name;
	this->info.nickname = other.info.nickname;
	this->info.phone_number = other.info.phone_number;
	this->info.darkest_secret = other.info.darkest_secret;
}

Contact& Contact::operator=(const Contact& other) {
	if (this == &other) {
		return *this;
	}
	this->info.first_name = other.info.first_name;
	this->info.last_name = other.info.last_name;
	this->info.nickname = other.info.nickname;
	this->info.phone_number = other.info.phone_number;
	this->info.darkest_secret = other.info.darkest_secret;
	return *this;
}

bool Contact::setInfo(::info info) {
	if (std::cin.eof())
		return false;
	if (!checkPhoneNumber(info.phone_number)) {
		std::cout << "Incorrect phone number format (written in xxx-xxxx-xxxx format)" << std::endl;
		return false;
	}
	this->info = info;
	return true;
}

bool Contact::checkPhoneNumber(const std::string &phone_number) {
	if (phone_number.size() != 13) {
		return false;
	}
	for (size_t i = 0; i < phone_number.size(); ++i) {
		char c = phone_number[i];
		if (i == 3 || i == 8) {
			if (c != '-') {
				std::cout << c << std::endl;
				return false;
			}
		} else {
			if (!isdigit(c)) {
				return false;
			}
		}
	}
	return true;
}


void Contact::printInfo() {
	std::cout << "First Name: " << info.first_name << std::endl;
	std::cout << "Last Name: " << info.last_name << std::endl;
	std::cout << "Nickname: " << info.nickname << std::endl;
	std::cout << "Phone Number: " << info.phone_number << std::endl;
	std::cout << "Darkest Secret: " << info.darkest_secret << std::endl;
}

std::string Contact::truncateString(const std::string &str) {
	if (str.length() > 10) {
		return str.substr(0, 9) + ".";
	}
	return str;
}

void Contact::printForm(std::string string) {
	std::cout << std::right << std::setw(10) << truncateString(string) << "|";
}

void Contact::printContact(int idx) {
	printForm(std::to_string(idx));
	printForm(info.first_name);
	printForm(info.last_name);
	printForm(info.nickname);
	std::cout << std::endl;
}