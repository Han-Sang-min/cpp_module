#pragma once

#include <fstream>
#include <iostream>
#include <map>
#include <sstream>
#include <string>

class BitcoinExchange {
public:
    BitcoinExchange();
    BitcoinExchange(const BitcoinExchange& other);
    BitcoinExchange& operator=(const BitcoinExchange& other);
    ~BitcoinExchange();

    void computePrices(const std::string& filename); 
private:
    std::map<std::string, double> prices_;
    
    bool isDigits(const std::string &str) const;
    void DateValidation(const std::string &date) const;
};
