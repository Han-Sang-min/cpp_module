#include "RPN.hpp"
#include <sstream>
#include <stdexcept> 

RPN::RPN() {}

RPN::RPN(const RPN& other) : numStack(other.numStack) {}

RPN& RPN::operator=(const RPN& other) {
	if (this != &other) {
		this->numStack = other.numStack;
	}
	return *this;
}

RPN::~RPN() {}

int RPN::Calculate(const std::string& input) {
	std::istringstream iss(input);
	std::string token;

	while (iss >> token) {
		/* Check if it's a single character */
		if (token.size() != 1)
			throw std::runtime_error("Error");
		
		if (token >= "0" && token <= "9") {
			numStack.push(token[0] - '0');
		} else if (token == "+" || token == "-" || token == "*" || token == "/") {
			if (numStack.size() < 2) {
				throw std::runtime_error("Not enough numbers for operation");
			}

			int num2 = numStack.top(); numStack.pop();
			int num1 = numStack.top(); numStack.pop();

			if (token == "+") numStack.push(num1 + num2);
			else if (token == "-") numStack.push(num1 - num2);
			else if (token == "*") numStack.push(num1 * num2);
			else {
				if (num2 == 0) {
					throw std::runtime_error("Division by zero");
				}
				numStack.push(num1 / num2);
			}
		} else {
			throw std::runtime_error("Error");
		}
	}

	if (numStack.size() != 1) {
		throw std::runtime_error("Error");
	}

	return numStack.top();
}
