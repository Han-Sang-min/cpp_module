#pragma once

#include <fstream>
#include <iostream>
#include <map>
#include <sstream>
#include <string>

class BitcoinExchange {
private:
    std::map<std::string, double> prices;
    
    bool isDigits(const std::string &str) const;
    void DateValidation(const std::string &date) const;
public:
    BitcoinExchange();
    BitcoinExchange(const BitcoinExchange& other);
    BitcoinExchange& operator=(const BitcoinExchange& other);
    ~BitcoinExchange();

    void compute_prices(const std::string& filename);
};
