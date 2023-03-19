#include "PhoneBook.hpp"

PhoneBook::PhoneBook() : cur_size(0), cur_index(0) {}
PhoneBook::~PhoneBook() {}

PhoneBook::PhoneBook(const PhoneBook& other) : cur_size(other.cur_size), cur_index(other.cur_index) {
	for (int i = 0; i < cur_size; ++i) {
		contacts[i] = other.contacts[i];
	}
}

PhoneBook& PhoneBook::operator=(const PhoneBook& other) {
	if (this == &other) {
		return *this;
	}
	cur_size = other.cur_size;
	cur_index = other.cur_index;
	for (int i = 0; i < cur_size; ++i) {
		contacts[i] = other.contacts[i];
	}
	return *this;
}

void PhoneBook::addContact(const Contact& contact) {
	if (cur_size < 8) {
		++cur_size;
	}
	contacts[cur_index] = contact;
	++cur_index %= 8;
}

void PhoneBook::getContact() {
	for (int i = 0; i < cur_size; i++)
		contacts[i].printContact(i);
	int indexOfEntry;
	std::cout << "Enter an index: ";
	while (!(std::cin >> indexOfEntry)) {
		if (std::cin.eof())
			return ;
		std::cout << "Invalid input. Please enter an integer: ";
		std::cin.clear();
		std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
	}
	std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
	if (indexOfEntry >= 0 && indexOfEntry >= cur_size)
		std::cout << "The index is out of range or wrong" << std::endl;
	else
		contacts[indexOfEntry].printInfo();
}
