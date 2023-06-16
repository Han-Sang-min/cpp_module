#include <cstddef>
#include <deque>
#include <stack>

template <typename T>
class MutantStack : public std::stack<T>{
private:
	std::deque<T> _stack;
	
public:
    MutantStack() {}
    MutantStack(const MutantStack &other) : std::stack<T>(other) {}
    ~MutantStack() {}

    MutantStack &operator=(const MutantStack &other) {
        return std::stack<T>::operator=(other);
    }

    typedef typename std::deque<T>::iterator iterator;
    typedef typename std::deque<T>::const_iterator const_iterator;

	iterator begin() { return std::stack<T>::c.begin(); }
    const_iterator begin() const { return std::stack<T>::c.begin(); }
    iterator end() { return std::stack<T>::c.end(); }
    const_iterator end() const { return std::stack<T>::c.end(); }
};
