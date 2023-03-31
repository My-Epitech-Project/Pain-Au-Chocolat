##
## EPITECH PROJECT, 2022
## Makefile
## File description:
## A Universal Makefile.
##

# PARAM
PROGNAME		=		chocolatine
OBJ				=		$(SRC:.c=.o)
OBJ_SEGFAULT	=		$(SRC_SEGFAULT:.c=.o)
SRC				=		src/main.c 										\
						src/chocolatine.c 								\

SRC_TESTS		=		tests/test_chocolatine.c 						\

# MAKEFILE
WARNING			=		-W -Wall -Wextra
LIB 			=		-lmy
LIB_NCURSES		=		-lncurses
LIB_CSFML		=		-lcsfml-window -lcsfml-graphics -lcsfml-system \
						-lcsfml-audio
LIB_DIR			=		-L ./lib
INCLUDE_DIR 	=		-I ./include
CFLAGS			=		$(INCLUDE_DIR) $(WARNING)
CFLAGS_TEST		= 		$(CFLAGS) -lcriterion --coverage
SRC_TEST		=		$(filter-out src/main.c,$(SRC))
CC				=		gcc

all:	$(PROGNAME)

$(PROGNAME):	$(OBJ)
		@$(CC) $(OBJ) -o $(PROGNAME)

clean:
		@rm -rf $(OBJ)

fclean:			clean
		@rm -rf $(PROGNAME)

re:		fclean all
		@rm -rf $(OBJ)

tests_run: fclean all $(NAME)
		$(CC) -o tests/test.out $(SRC_TESTS) $(SRC_TEST) $(CFLAGS_TEST)
		./tests/test.out --verbose
		gcovr --exclude tests/

clean_test:
		rm -f *.gcda
		rm -f *.gcno
		rm -f tests/test.out*

debug :
		$(CC) $(SRC) -g -o $(PROGNAME) $(CFLAGS) $(LIB_DIR) $(LIB)
		@make clean -C ./lib
		rm -rf $(OBJ)

val:	$(OBJ)
		valgrind --leak-check=full --show-leak-kinds=all ./$(PROGNAME) map.txt
		rm -f *.vgcore

delval:
		@rm -f vgcore*
