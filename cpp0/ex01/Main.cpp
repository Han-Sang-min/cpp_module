#include "./PhoneBook.hpp"

int main() {
	std::string	commend;
	PhoneBook	pb;

	while (true) {
		std::cout << "Please enter command (ADD, SEARCH, or EXIT): ";
		std::cin >> commend;
		if (commend == "ADD") {
			info info;
			std::cout << "First Name: ";
            std::cin >> info.first_name;
            std::cout << "Last Name: ";
            std::cin >> info.last_name;
            std::cout << "Nickname: ";
            std::cin >> info.nickname;
            std::cout << "Phone Number: ";
            std::cin >> info.phone_number;
            std::cout << "Darkest Secret: ";
            std::cin >> info.darkest_secret;
			Contact contact;
			contact.setInfo(info);
			pb.addContact(contact);
		}
		else if (commend == "SEARCH") {
			std::cout << std::setw(10) << "Index" << "|" 
			<< std::setw(10) << "First Name" << "|" 
			<< std::setw(10) << "Last Name" << "|" 
			<< std::setw(10) << "Nickname" << "|" << std::endl;
			pb.getContact();
		}
		else if (commend == "EXIT")
			return 0;
	}
	return 0;
}