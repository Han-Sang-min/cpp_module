#pragma once

#include <algorithm>
#include <stdexcept>

template <typename T>
typename T::iterator easyfind(T& container, int value) {
    typename T::iterator it = std::find(container.begin(), container.end(), value);

    // if not found end return check
    if (it == container.end()) {
        throw std::runtime_error("Value not found");
    }

    return it;
}
