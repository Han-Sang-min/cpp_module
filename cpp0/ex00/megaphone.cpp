#include <iostream>
#include <string>
#include <cctype>

void megaphone(const std::string &message) {
    std::string upper_message = message;
    for (std::size_t i = 0; i < upper_message.size(); ++i) {
        upper_message[i] = std::toupper(upper_message[i]);
    }
    std::cout << upper_message;
}

int main(int argc, char *argv[]) {
    if (argc <= 1) {
        std::cout << "Please provide at least one argument." << std::endl;
        return 1;
    }
    for (int i = 1; i < argc; ++i) {
        std::string msg(argv[i]);
        megaphone(msg);
    }
	std::cout << std::endl;
    return 0;
}