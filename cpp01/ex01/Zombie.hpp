#pragma once
#include <iostream>
#include <string>

class Zombie {
	public:
		Zombie();
		Zombie(std::string name);
		~Zombie();
		void announce();
	private:
		std::string name;
};