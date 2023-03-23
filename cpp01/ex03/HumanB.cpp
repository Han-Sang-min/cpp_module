#include "HumanB.hpp"

HumanB::HumanB(std::string name) : name(name), weapon_type(NULL) {}
HumanB::HumanB(std::string name, Weapon &weapon_type) : name(name), weapon_type(&weapon_type) {}

void HumanB::setWeapon(Weapon &weapon_type) {
	this->weapon_type = &weapon_type;
}

void HumanB::attack() {
	if (weapon_type != NULL)
		std::cout << name << " attacks with their " << weapon_type->getType() << std::endl;
	else
		std::cout << name << " attacks with their fist" << std::endl;
}