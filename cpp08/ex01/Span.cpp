#include "Span.hpp"
#include <stdexcept>

Span::Span() {}

Span::Span(const Span &other) {
	*this = other;
}

Span &Span::operator=(const Span &other) {
	if (this != &other) {
		_vec = other._vec;
	}
	return *this;
}

Span::~Span() {}

Span::Span(unsigned int n) : _n(n) {
	_vec.reserve(n);
}

void Span::addNumber(int value) {
	if (_vec.size() + 1 > _n) {
		throw std::logic_error("Span has exceeded its size.");
	}

	_vec.push_back(value);
}

int Span::shortestSpan() const {
        if (_vec.size() < 2) {
            throw std::logic_error("Span is less than 2.");
        }

        std::vector<int> copy = _vec;
        std::sort(copy.begin(), copy.end());

        int shortest = INT_MAX;
        for (std::size_t i = 1; i < copy.size(); ++i) {
            int diff = copy[i] - copy[i-1];
            if (diff < shortest) {
                shortest = diff;
            }
        }

        return shortest;
    }

    int Span::longestSpan() const {
        if (_vec.size() < 2) {
            throw std::logic_error("Span is less than 2.");
        }

        int min_num = *std::min_element(_vec.begin(), _vec.end());
        int max_num = *std::max_element(_vec.begin(), _vec.end());

        return max_num - min_num;
    }

void Span::addRange(std::vector<int>::iterator st, std::vector<int>::iterator end) {
	for (std::vector<int>::iterator it = st; it != end; it++) {
		addNumber(*it);
	}
}