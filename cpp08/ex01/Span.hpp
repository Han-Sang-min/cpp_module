#pragma once

#include <vector>

class Span {
	private:
		std::vector<int> vec;
	public:
		Span();
		Span(const Span &other);
		Span &operator=(const Span &other);
		~Span();

		Span(unsigned int n);

		void addNumber(int value);
		int shortestSpan() const;
		int longestSpan() const;
};