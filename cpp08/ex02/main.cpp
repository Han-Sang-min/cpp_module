#include "MutantStack.hpp"
#include <iostream>
#include <stack>
#include <list>
#include <fstream>

const std::string file1 = "mstack.txt";
const std::string file2 = "list.txt";

int main()
{
	{
		MutantStack<int> mstack;
		std::ofstream outputFile(file1);

		mstack.push(5);
		mstack.push(17);
		std::cout << mstack.top() << std::endl;
		outputFile << mstack.top();
		mstack.pop();
		std::cout << mstack.size() << std::endl;
		outputFile << mstack.size();
		mstack.push(3);
		mstack.push(5);
		mstack.push(737);
		//[...]
		mstack.push(0);
		MutantStack<int>::iterator it = mstack.begin();
		MutantStack<int>::iterator ite = mstack.end();
		++it;
		--it;
		while (it != ite)
		{
		std::cout << *it << std::endl;
		outputFile << *it;
		++it;
		}
		std::stack<int> s(mstack);

	
	}
	std::cout << std::endl;
	{
		std::list<int> mstack;
		std::ofstream outputFile(file2);

		mstack.push_back(5);
		mstack.push_back(17);
		std::cout << mstack.back() << std::endl;
		outputFile << mstack.back();
		mstack.pop_back();
		std::cout << mstack.size() << std::endl;
		outputFile << mstack.size();
		mstack.push_back(3);
		mstack.push_back(5);
		mstack.push_back(737);
		//[...]
		mstack.push_back(0);
		std::list<int>::iterator it = mstack.begin();
		std::list<int>::iterator ite = mstack.end();
		++it;
		--it;
		while (it != ite)
		{
		std::cout << *it << std::endl;
		outputFile << *it;
		++it;
		}
		std::list<int> s(mstack);
	}
	std::cout << "------" << std::endl;
	system(("diff " + file1 + " " + file2).c_str()) ? std::cout << "KO" : std::cout << "OK";
	std::cout << std::endl;
	system(("rm " + file1 + " " + file2).c_str());

	return 0;
}
