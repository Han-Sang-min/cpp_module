#include <iostream>
#include "BitcoinExchange.hpp"

int main(int argc, char** argv) {
    if (argc != 2) {
        std::cout << "Usage: " << argv[0] << " [Input File]" << std::endl;
        return 1;
    }

    BitcoinExchange btcExchange;
    btcExchange.compute_prices(argv[1]);

    return 0;
}
