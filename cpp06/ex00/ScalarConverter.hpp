#pragma once

#include <cctype>
#include <iostream>
#include <sstream>

class ScalarConverter
{
	private:
		ScalarConverter();
		ScalarConverter(ScalarConverter &other);
		ScalarConverter &operator=(ScalarConverter &other);
		~ScalarConverter();

	public:
		static void convert(std::string literal);
		static bool processPseudoLiteral(std::string literal);
};