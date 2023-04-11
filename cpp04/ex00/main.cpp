#include "Animal.hpp"
#include "Dog.hpp"
#include "Cat.hpp"
#include "WrongAnimal.hpp"
#include "WrongCat.hpp"

int main() {
    const Animal* meta = new Animal();
    const Animal* j = new Dog();
    const Animal* i = new Cat();
    const WrongAnimal* wrongMeta = new WrongAnimal();
    const WrongAnimal* wrongI = new WrongCat();

    std::cout << j->getType() << " " << std::endl;
    std::cout << i->getType() << " " << std::endl;
    std::cout << wrongMeta->getType() << std::endl;
    std::cout << wrongI->getType() << std::endl;

    j->makeSound();
    i->makeSound();
    meta->makeSound();
    wrongMeta->makeSound();
    wrongI->makeSound();
	delete meta;
    delete j;
    delete i;
    delete wrongMeta;
    delete wrongI;

	// system("leaks ex00");
    return 0;
}
