NAME = btc
CXX = c++

SRC = 	main.cpp \
		BitcoinExchange.cpp

OBJ = $(SRC:.cpp=.o)
OBJDIR = obj/
OBJS = $(addprefix $(OBJDIR), $(OBJ))
CXXFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJS)
	@echo "\033[0;33mCompiling...\033[0m"
	@$(CXX) $(CXXFLAGS) -o $@ $^
	@echo "\033[0;32mcompiled!\033[0m"

$(OBJDIR)%.o: %.cpp
	@mkdir -p $(OBJDIR)
	@$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	@echo "\033[0;31mCleaning object files...\033[0m"
	@/bin/rm -rf $(OBJDIR)

fclean: clean
	@echo "\033[0;31mCleaning executable...\033[0m"
	@/bin/rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
