#pragma once

#include <stdexcept>
template <typename T>
class Array
{
	private:
		T *arr;
		unsigned int n;

	public:
		Array() : n(0) { arr = new T(); }
		
		Array(const Array &other)
		{
			*this = other;
		}

		Array &operator=(const Array &other)
		{
			if (this == &other)
				return *this;
			arr = new T[other.n]();
			n = other.n;
			for (unsigned int i = 0; i < other.n; ++i)
			{
				arr[i] = other.arr[i];
			}
			return *this;
		}
		
		~Array()
		{
			delete arr;
		}

		T &operator[](unsigned int index)
		{
			if (index >= n)
				throw std::out_of_range("Array index out of bounds");
			return arr[index];
		}

		Array(unsigned int n) : n(n)
		{
			arr = new T[n]();
		}

		unsigned int size()
		{
			return n;
		}
};
