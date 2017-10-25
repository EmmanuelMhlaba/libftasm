CC = gcc
CCFLAGS = -Wall -Werror -Wextra
ifeq ($(shell uname -s), Darwin)
	NASM = nasm -f macho64
else
	NASM = nasm -f elf64
endif

NAME = libfts.a
SRCFOLDER = src
INCLUDEFOLDER = include
TESTFILE = main.c
TEST = test
INCLUDE = $(wildcard $(INCLUDEFOLDER)/*.h)
SRC = $(wildcard $(SRCFOLDER)/*.s)
OBJ = $(SRC:.s=.o)

all: $(NAME) $(TEST)

$(TEST): $(NAME) $(TESTFILE) $(INCLUDE)
	@$(CC) $(CCFLAGS) $(TESTFILE) -o $(TEST) -I $(INCLUDEFOLDER) -L . -lfts

$(NAME): $(OBJ)
	@ar rc $@ $^
	@ranlib $@

%.o: %.s
	@$(NASM) -o $@ $<

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME) $(TEST)

re: fclean all

.PHONY: all clean fclean re
