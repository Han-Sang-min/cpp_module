#ifndef PMERGEME_H
#define PMERGEME_H

#include <deque>
#include <vector>
#include <stdexcept>
#include  <iostream>

class PmergeMe {
public:
	PmergeMe();
    PmergeMe(const PmergeMe& other);
    PmergeMe& operator=(const PmergeMe& rhs);
    ~PmergeMe();

	void init_container1(std::vector<unsigned int> &vec);
	void init_container2(std::vector<unsigned int> &vec);
	
    void sort_container1();
    void sort_container2();

    void print_and_check_sorted();

private:
    std::vector<unsigned int> container1;
    std::deque<unsigned int> container2;

	template<typename T>
	std::vector<T> split_into_k(T& container, int k) {
		std::vector<T> res;

		for (size_t i = 0; i < container.size(); i += k) {
			T tmp;

			for (size_t j = i; j < i + k && j < container.size(); j++) {
				tmp.push_back(container[j]);
			}
			res.push_back(tmp);
		}
		return res;
	}

	void merge_insert_sort();

	//function
	/* insertionSort */
	template<typename T>
	void insertion_sort(T &arr) {
		int size = arr.size();

		for (int i = 1; i < size; i++) {
			unsigned int key = arr[i];
			int j = i - 1;

        while (j >= 0 && arr[j] > key) {
            arr[j + 1] = arr[j];
            j = j - 1;
        }
        arr[j + 1] = key;
    	}
	}

	//function
	/* only merge sort */
	template<typename T>
	void merge(T& arr, int l, int m, int r) {
    int i, j, k;
    int n1 = m - l + 1;
    int n2 = r - m;

    T L(n1), R(n2);

	/* copy */
    for (i = 0; i < n1; i++)
        L[i] = arr[l + i];
    for (j = 0; j < n2; j++)
        R[j] = arr[m + 1 + j];

    i = 0;
    j = 0;
    k = l;

	/* merge */
    while (i < n1 && j < n2) {
        if (L[i] <= R[j])
            arr[k] = L[i++];
        else
            arr[k] = R[j++];
        k++;
    }

	/* add the rest */
    while (i < n1)
        arr[k++] = L[i++];
    while (j < n2)
        arr[k++] = R[j++];
	}
};

#endif
