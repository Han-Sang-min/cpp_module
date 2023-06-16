#include "RPN.hpp"
#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <iterator>

int main(int argc, char** argv) {
	if (argc != 2) {
		std::cout << "Invalide argment error" << std::endl;
		return 1;
	}

	try {
		RPN rpn;
		std::string input;
		for (int i = 1; i < argc; ++i) {
			if (i > 1)
				input += " ";
			input += argv[i];
		}
		int result = rpn.Calculate(input);
		std::cout << result << std::endl;
	} catch (const std::exception& e) {
		std::cout << e.what() << std::endl;
        return 1;
	}

	return 0;
}
