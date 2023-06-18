#include <iostream>
#include <ctime>
#include <list>
#include <vector>
#include "PmergeMe.hpp"

void print_vector(const std::vector<int>& vec) {
    for (std::vector<int>::const_iterator it = vec.begin(); it != vec.end(); ++it) {
        std::cout << *it << ' ';
    }
    std::cout << '\n';
}

int main(int ac, char *av[]) {
	if (ac == 1) {
		std::cout << "Not found argument" << std::endl;
		return 1;
	}

    std::vector<int> nums;

	for (int i = 1; i < ac; ++i) {
		// ㅇㅔ러 체크  추가, ex negetive nuber, charter
        nums.push_back(std::atoi(av[i]));
    }

    PmergeMe tester;

	/* first line */
    std::cout << "Before: ";
    print_vector(nums);

	/* sort 1 */
    std::clock_t start1 = std::clock();
	tester.init_container1(nums);
    tester.sort_container1();
    std::clock_t end1 = std::clock();

	/* sort 2 */
    std::clock_t start2 = std::clock();
	tester.init_container2(nums);
    tester.sort_container2();
    std::clock_t end2 = std::clock();

	/* second line */
    std::cout << "After: ";
    tester.print_and_check_sorted();
	
	/* third line */
    double diff1 = 1000.0 * (end1 - start1) / CLOCKS_PER_SEC;
    std::cout << "Time to process a range of " << nums.size() << " elements with std::vector: "
              << diff1 << " ms\n";

	/* last line */
    double diff2 = 1000.0 * (end2 - start2) / CLOCKS_PER_SEC;
    std::cout << "Time to process a range of " << nums.size() << " elements with std::deque: "
              << diff2 << " ms\n";

    return 0;
}

// add, error handle, ex:negetive number