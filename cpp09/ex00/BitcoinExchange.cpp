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
        // not yet testing
    }

    /* rest line of csv processing part */
    while (std::getline(file, line)) {
        std::stringstream ss(line);
        std::string date;
        double exchange_rate;
        size_t pos = line.find(',');

        /* delimiter validation */
        if (pos == std::string::npos) {
            throw std::runtime_error("Invalid date format: " + line);
        }
        
        date = line.substr(0, pos);
        DateValidation(date);
        ss.ignore(pos + 1);
        ss >> exchange_rate;
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

bool BitcoinExchange::isDigits(const std::string &str) const {
    for (size_t i = 0; i < str.size(); ++i) {
        if (!isdigit(str[i]))
            return 1;
    }
    return 0;
}

void BitcoinExchange::DateValidation(const std::string &date) const
{
    /* basic format validation */
    {
        if (date.size() != 10 || date[4] != '-' || date[7] != '-')
            throw std::runtime_error("Invalid date format: " + date);
    }

    /* validate each element is number */
    std::string month_str = date.substr(5, 2);
    std::string day_str = date.substr(8, 2);
    {
        std::string year_str = date.substr(0, 4);
        if (isDigits(year_str) || isDigits(month_str) || isDigits(day_str))
            throw std::runtime_error("Invalid date format: " + date);
    }
    
    /* month & day range validation */
    int month = std::atoi(month_str.c_str());
    int day = std::atoi(day_str.c_str());
    if (month < 1 || month > 12) {
        throw std::runtime_error("Invalid month: " + month_str);
    }

    int max_day;
    if (month == 2) {
        max_day = 28;
    } else if (month == 4 || month == 6 || month == 9 || month == 11) {
        max_day = 30;
    } else {
        max_day = 31;
    }
    if (day < 1 || day > max_day) 
        throw std::runtime_error("Invalid day: " + day_str);
}

BitcoinExchange::~BitcoinExchange() {}
