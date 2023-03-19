#pragma once
#include "Contact.hpp"

class PhoneBook {
public:
	PhoneBook();
	~PhoneBook();
	PhoneBook(const PhoneBook& other);
	PhoneBook& operator=(const PhoneBook& other);
	void addContact(const Contact& contact);
	void getContact();
private:
    Contact contacts[8];
	int cur_size;
	int cur_index;
};
