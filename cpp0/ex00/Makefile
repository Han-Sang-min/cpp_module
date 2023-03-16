# Configure the compiler
CXX = c++
# Set the flags (we're using C++98 standard here)
CXXFLAGS = -std=c++98 -Wall -Wextra -Werror

# Set the target executable name
TARGET = megaphone

# Set the source file name
SRC = megaphone.cpp

# Generate the object file name (megaphone.o)
OBJ = $(SRC:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<

re : clean all

# Rule for cleaning up generated files
clean:
	rm -f $(OBJ) $(TARGET)