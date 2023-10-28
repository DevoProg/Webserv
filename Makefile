NAME = webserv

SRCS = 	sources/core/main.cpp \


HEADERS	= includes/webserv.hpp

OBJS = $(SRCS:.cpp=.o)

COMP = c++

CFLAGS = -g3 -Wall -Wextra -Werror -std=c++98
#CFLAGS +=  

RM = rm -rf

RESET = "\033[0m"
YELLOW = "\033[1m\033[33m"

all:
	@$(MAKE) $(NAME) -j5

$(NAME) : $(OBJS) $(HEADERS)
	$(COMP) $(CFLAGS) $(OBJS) -o $(NAME)
	@echo $(YELLOW)- Webserv deployed! $(RESET)

clean:
	$(RM) $(OBJS) $(NAME)

fclean: clean
	$(RM) $(NAME)

re: 	fclean all

.PHONY: all clean fclean re

debug :
	CFLAGS += -fsanitize=address
	CFLAGS += -D DEBUG
	MAKE all