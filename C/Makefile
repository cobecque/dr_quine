# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cobecque <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/08/22 20:26:10 by cobecque          #+#    #+#              #
#    Updated: 2018/08/22 20:41:21 by cobecque         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: all Collen Grace Sully clean fclean re

CC = gcc
FLAGS = -Wall -Werror -Wextra

OBJ_DIR = ./obj

all: Collen Grace Sully

Collen:
	@printf "\n\n\n\n\n\n\n\n"
	@rm -rf $(OBJ_DIR)
	@mkdir $(OBJ_DIR)
	@$(CC) $(FLAGS) Collen.c -o Collen
	@printf $(CN_YEL) "				compiled -> Collen"

Grace:
	@$(CC) $(FLAGS) Grace.c -o Grace
	@printf $(CN_YEL) "				compiled -> Grace"

Sully:
	@$(CC) $(FLAGS) Sully.c -o Sully
	@printf $(CN_YEL) "				compiled -> Sully"

clean:
	@rm -rf $(OBJ_DIR)

fclean: clean
	@rm -rf Collen
	@rm -rf Grace
	@rm -rf Sully
	@rm -rf Grace_kid.c
	@rm -rf Sully_*
	@printf "\n\n\n\n\n\n\n\n"
	@rm -rf $(OBJ_DIR)
	@printf $(CN_BLU) "				all Cleared !!!!"

re: fclean all

CN_YEL = "\e[33;m%s\e[0m\n"
CN_BLU = "\e[34;m%s\e[0m\n"
