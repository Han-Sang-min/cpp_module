#include <iostream>
#include "Bureaucrat.hpp"
#include "AForm.hpp"
#include "ShrubberyCreationForm.hpp"
#include "RobotomyRequestForm.hpp"
#include "PresidentialPardonForm.hpp"

int main() {
    Bureaucrat bob("Bob", 1);
    ShrubberyCreationForm shrubberyForm("home");
    RobotomyRequestForm robotomyForm("target");
    PresidentialPardonForm pardonForm("criminal");

    // Form 생성 테스트
    std::cout << shrubberyForm << std::endl;
    std::cout << robotomyForm << std::endl;
    std::cout << pardonForm << std::endl;

    // Form 실행 테스트
    try {
        bob.executeForm(shrubberyForm);
    } catch(std::exception &e) {
        std::cout << "Caught exception: " << e.what() << std::endl;
    }

    try {
        bob.executeForm(robotomyForm);
    } catch(std::exception &e) {
        std::cout << "Caught exception: " << e.what() << std::endl;
    }

    try {
        bob.executeForm(pardonForm);
    } catch(std::exception &e) {
        std::cout << "Caught exception: " << e.what() << std::endl;
    }

    return 0;
}
