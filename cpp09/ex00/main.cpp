#include <iostream>
#include <stdexcept>
#include "BitcoinExchange.hpp"

int main(int argc, char** argv) {
    try{
        if (argc != 2) {
            throw std::runtime_error("could not open file.");
        }

        BitcoinExchange btcExchange;
        btcExchange.computePrices(argv[1]);
    } catch (const std::runtime_error &e) {
        std::cerr << "Error: " << e.what() << std::endl;
    }

    return 0;
}
