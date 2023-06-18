NAME = PmergeMe
CXX = c++

SRC = 	main.cpp \
		PmergeMe.cpp

OBJ = $(SRC:.cpp=.o)
OBJDIR = obj/
OBJS = $(addprefix $(OBJDIR), $(OBJ))
CXXFLAGS = -Wall -Wextra -Werror -std=c++98
DEBUGFLAGS = -g

all: $(NAME)

debug: DEBUGFLAGS += -g
debug: fclean $(NAME)
	@lldb $(NAME)

$(NAME): $(OBJS)
	@echo "\033[0;33mCompiling...\033[0m"
	@$(CXX) $(CXXFLAGS) $(DEBUGFLAGS) -o $@ $^
	@echo "\033[0;32mcompiled!\033[0m"

$(OBJDIR)%.o: %.cpp
	@mkdir -p $(OBJDIR)
	@$(CXX) $(CXXFLAGS) $(DEBUGFLAGS) -c $< -o $@

clean:
	@echo "\033[0;31mCleaning object files...\033[0m"
	@/bin/rm -rf $(OBJDIR)

fclean: clean
	@echo "\033[0;31mCleaning executable...\033[0m"
	@/bin/rm -f $(NAME)

re: fclean all

.PHONY: all debug clean fclean re
