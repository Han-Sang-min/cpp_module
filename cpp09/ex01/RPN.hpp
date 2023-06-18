#ifndef RPN_HPP
#define RPN_HPP

#include <stack>
#include <string>
#include <stdexcept> 

class RPN
{
public:
	RPN();
	RPN(const RPN& other);
	RPN& operator=(const RPN& other);
	~RPN();

	int Calculate(const std::string& input);
private:
	std::stack<int> numStack;
};

#endif