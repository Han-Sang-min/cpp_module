#include <iostream>
#include <string>
#include <cctype>

// Converts the given message to uppercase and prints it
void megaphone(const std::string &message) {
    std::string upper_message = message;
    // Convert each character in the string to uppercase
    for (std::size_t i = 0; i < upper_message.size(); ++i) {
        upper_message[i] = std::toupper(upper_message[i]);
    }
    // Print the uppercase message
    std::cout << upper_message;
}

int main(int argc, char *argv[]) {
    // Check if at least one argument is provided
    if (argc <= 1) {
        std::cout << "Please provide at least one argument." << std::endl;
        return 1;
    }

    // Process each argument and pass it to the megaphone function
    for (int i = 1; i < argc; ++i) {
        std::string msg(argv[i]);
        megaphone(msg);
    }
	std::cout << std::endl;
    return 0;
}