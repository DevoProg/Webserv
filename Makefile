NAME = webserv

SRCS = 	sources/main.cpp \


HEADERS	= includes/Webserv.hpp

OBJS = $(SRCS:.cpp=.o)

COMP = c++

COMPFLAGS = -Wall -Wextra -Werror -std=c++98
COMPFLAGS += -g3 

RM = rm -rf

RESET = "\033[0m"
YELLOW = "\033[1m\033[33m"

all:
	@$(MAKE) $(NAME) -j5

$(NAME) : $(OBJS) $(HEADERS)
	$(COMP) $(COMPFLAGS) $(OBJS) -o $(NAME)
	@echo $(YELLOW)- Webserv deployed! $(RESET)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: 	fclean all

.PHONY: all clean fclean re