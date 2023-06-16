#include "BitcoinExchange.hpp"
#include <exception>
#include <ios>
#include <stdexcept>
#include <string>

BitcoinExchange::BitcoinExchange() {
    /* part of input file */
	std::ifstream file("data.csv");
    if (!file.is_open())
        throw std::runtime_error("could not open file: data.csv");
    
    /* first line of data.csv processing part */
    std::string line;
    {
        std::getline(file, line);
        if (line != "date,exchange_rate")
            throw std::runtime_error("unknown header format: data.csv");
    }

    /* rest line of csv processing part */
    while (std::getline(file, line)) {
        std::stringstream ss(line);
        std::string date;
        double exchange_rate;
        size_t pos = line.find(',');

        /* delimiter validation */
        if (pos == std::string::npos) {
            throw std::runtime_error("invalid date format: " + line);
        }
        
        /* split & store */
        date = line.substr(0, pos);
        DateValidation(date);
        ss.ignore(pos + 1);
        ss >> exchange_rate;
        if (ss.fail() || !ss.eof())
            throw std::runtime_error("invalid date format: " + line);
        prices_[date] = exchange_rate;
    }
}

BitcoinExchange::BitcoinExchange(const BitcoinExchange& other) : prices_(other.prices_) {}

BitcoinExchange& BitcoinExchange::operator=(const BitcoinExchange& other) {
    if (this != &other) {
        this->prices_ = other.prices_;
    }
    return *this;
}

void BitcoinExchange::computePrices(const std::string& filename) {
    /* part of input file */
    std::ifstream file(filename);
    if (!file.is_open())
        throw std::runtime_error("could not open file: data.csv");

    /* first line of input.txt processing part */
    std::string line;
    {
        std::getline(file, line);
        if (line != "date | value")
            throw std::runtime_error("unknown header format: input.txt");
    }

    /* rest line of input.txt processing part */
    while (std::getline(file, line)) {
        std::stringstream ss(line);
        std::string date;
        float value;
        size_t pos = line.find('|');

        /* delimiter validation */
        if (pos == std::string::npos) {
            std::cout << "Error: bad input => " + line << std::endl;;
            continue;
        }
        
        /* split & print */
        date = line.substr(0, pos - 1);
        try {
            DateValidation(date);
        } catch (const std::runtime_error &e) {
            std::cout << "Error: " << e.what() << std::endl;
            continue;
        }
        ss.ignore(pos + 2);
        ss >> value;
        /* value error checking */
        {
            if (ss.fail() || !ss.eof()) {
                std::cout << "Error: bad input => " + line << std::endl;;
                continue;
            } if (value > 1000.0f) {
                std::cout << "Error: too large a number." << std::endl;
                continue;
            } if (value < 0.0f) {
                std::cout << "Error: not a positive number." << std::endl;
                continue;   
            }
        }
        
        std::map<std::string, double>::const_iterator it = prices_.lower_bound(date);
        if (it == prices_.begin()) {
            std::cerr << "bad input => " << date << std::endl;
            continue;
        }
        if (it == prices_.end() || it->first != date) {
            --it;
        } 

        /* print part */
        {
            double price = it->second;
            double result = value * price;
            std::cout << date << " => " << value << " = " << result << std::endl;
        }
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
            throw std::runtime_error("invalid date format: " + date);
    }

    /* validate each element is number */
    std::string month_str = date.substr(5, 2);
    std::string day_str = date.substr(8, 2);
    {
        std::string year_str = date.substr(0, 4);
        if (isDigits(year_str) || isDigits(month_str) || isDigits(day_str))
            throw std::runtime_error("dates can only have numbers: " + date);
    }
    
    /* month & day range validation */
    int month = std::atoi(month_str.c_str());
    int day = std::atoi(day_str.c_str());
    if (month < 1 || month > 12) {
        throw std::runtime_error("invalid month: " + month_str);
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
        throw std::runtime_error("invalid day: " + month_str + "/" + day_str);
}

BitcoinExchange::~BitcoinExchange() {}
