#pragma once

#include <vector>

class Span {
	private:
		std::vector<int> _vec;
		unsigned int _n;

		Span();
	public:
		Span(unsigned int n);
		Span(const Span &other);
		Span &operator=(const Span &other);
		~Span();


		void addNumber(int value);
		int shortestSpan() const;
		int longestSpan() const;
		void addRange(std::vector<int>::iterator st, std::vector<int>::iterator end);
};
