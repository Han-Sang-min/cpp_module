#include "BitcoinExchange.hpp"
#include <exception>
#include <stdexcept>
#include <string>

BitcoinExchange::BitcoinExchange() {
    /* part of input file */
	std::ifstream file("data.csv");
    if (!file.is_open())
        throw std::runtime_error("Error: open fail");
    
    /* first line of csv processing part */
    std::string line;
    {
        std::getline(file, line);
        if (line != "date,exchange_rate")
            throw std::runtime_error("Error: Unknown header format");
    }

    /* rest line of csv processing part */
    /* [FEAT]add error handle. for instance string, double, separator */
    while (std::getline(file, line)) {
        std::stringstream ss(line);
        std::string date;
        double exchange_rate;
        std::getline(ss, date, ',');
        ss >> exchange_rate;
        std::cout << date << exchange_rate << std::endl;
        prices[date] = exchange_rate;
    }
}

BitcoinExchange::BitcoinExchange(const BitcoinExchange& other) : prices(other.prices) {}

BitcoinExchange& BitcoinExchange::operator=(const BitcoinExchange& other) {
    if (this != &other) {
        this->prices = other.prices;
    }
    return *this;
}

void BitcoinExchange::compute_prices(const std::string& filename) {
    std::ifstream file(filename.c_str());
    if (!file.is_open()) {
        std::cerr << "Error: could not open file." << std::endl;
        return;
    }

    std::string line;
    while (std::getline(file, line)) {
        std::stringstream ss(line);
        std::string date;
        double value;
        std::getline(ss, date, '|');
        ss >> value;

        if(value < 0) {
            std::cerr << "Error: not a positive number." << std::endl;
            continue;
        }

        if(value > 1000) {
            std::cerr << "Error: too large a number." << std::endl;
            continue;
        }

        std::map<std::string, double>::const_iterator it = prices.lower_bound(date);
        if (it == prices.end() || it->first != date) {
            if (it == prices.begin()) {
                std::cerr << "Error: bad input => " << date << std::endl;
                continue;
            }
            --it;
        }

        double price = it->second;
        double result = value * price;
        std::cout << date << " => " << value << " = " << result << std::endl;
    }
}

BitcoinExchange::~BitcoinExchange() {}
