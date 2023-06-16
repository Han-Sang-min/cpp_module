#include "Span.hpp"
#include <exception>
#include <iostream>
#include <stdexcept>

int main()
{
	try {
	Span sp = Span(5);

	sp.addNumber(6);
	sp.addNumber(3);
	sp.addNumber(17);
	sp.addNumber(9);
	sp.addNumber(11);
	
	std::cout << sp.shortestSpan() << std::endl;
	std::cout << sp.longestSpan() << std::endl;
	} catch(std::logic_error &e) {
		std::cerr << e.what() << std::endl;
	}
	
	std::cout << std::endl;

	Span sp(10000);
    for (int i = 0; i < 10000; ++i) {
        sp.addNumber(i);
    }

    std::cout << sp.shortestSpan() << '\n';
    std::cout << sp.longestSpan() << '\n';

    try {
        sp.addNumber(10000);
    } catch (const std::logic_error& e) {
        std::cout << e.what() << '\n';
    }
	return 0;
}
