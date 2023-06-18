#include "PmergeMe.hpp"
#include <algorithm>
#include <deque>
#include <vector>

PmergeMe::PmergeMe() {}

PmergeMe::PmergeMe(const PmergeMe& other)
    : container1(other.container1), container2(other.container2) {}

PmergeMe& PmergeMe::operator=(const PmergeMe& rhs) {
    if (this != &rhs) {
        container1 = rhs.container1;
        container2 = rhs.container2;
    }
    return *this;
}

PmergeMe::~PmergeMe() {}

void PmergeMe::init_container1(std::vector<int> &vec) {
	int size = vec.size();
	for (int i = 0; i < size; ++i) {
		container1.push_back(vec[i]);
	}
}

void PmergeMe::init_container2(std::vector<int> &vec) {
	int size = vec.size();
	for (int i = 0; i < size; ++i) {
		container2.push_back(vec[i]);
	}
}

void PmergeMe::sort_container1() {
    // Split the array
    std::vector<std::vector<int> > splitArrays = split_into_k<std::vector<int> >(container1, 2);

    // Insertion sort each split array
	int size = splitArrays.size();
    for (int i = 0; i < size; ++i) {
        insertion_sort(splitArrays[i]);
    }

    // Merge the arrays
    std::vector<int> merged = splitArrays[0];
    for (size_t i = 1; i < splitArrays.size(); i++) {
        std::vector<int> temp;
		temp.insert(temp.end(), merged.begin(), merged.end());
		temp.insert(temp.end(), splitArrays[i].begin(), splitArrays[i].end());
		merge(temp, 0, merged.size() - 1, temp.size() - 1);
        merged = temp;
    }

    // The merged array is now sorted
    container1 = merged;
}

void PmergeMe::sort_container2() {
    // Split the array
    std::vector<std::deque<int> > splitArrays = split_into_k<std::deque<int> >(container2, 2);

    // Insertion sort each split array
    int size = splitArrays.size();
    for (int i = 0; i < size; ++i) {
        insertion_sort(splitArrays[i]);
    }

    // Merge the arrays
    std::deque<int> merged = splitArrays[0];
    for (size_t i = 1; i < splitArrays.size(); i++) {
        std::deque<int> temp;
        temp.insert(temp.end(), merged.begin(), merged.end());
		temp.insert(temp.end(), splitArrays[i].begin(), splitArrays[i].end());
		merge(temp, 0, merged.size() - 1, temp.size() - 1);
        merged = temp;
    }

    // The merged array is now sorted
    container2 = merged;
}

void PmergeMe::print_and_check_sorted() {
    std::vector<int>::iterator it1 = container1.begin();
    std::deque<int>::iterator it2 = container2.begin();
    while (it1 != container1.end() && it2 != container2.end()) {
        if (*it1 != *it2) {
            throw std::runtime_error("Sorted containers do not match");
        }
        std::cout << *it1 << ' ';
        ++it1;
        ++it2;
    }
    std::cout << '\n';
}
