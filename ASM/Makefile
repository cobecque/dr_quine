# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cobecque <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/08/22 20:26:10 by cobecque          #+#    #+#              #
#    Updated: 2019/08/18 15:14:36 by cobecque         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: all Collen Grace Sully clean fclean re

ASM = ~/homebrew/bin/nasm -f macho64
CC = gcc
FLAGS = -Wall -Werror -Wextra

OBJ_DIR = ./obj

all: Collen Grace Sully

Collen:
	@printf "\n\n\n\n\n\n\n\n"
	@rm -rf $(OBJ_DIR)
	@mkdir $(OBJ_DIR)
	@$(ASM) Collen.s -o Collen.o
	@mv Collen.o ./$(OBJ_DIR)
	@$(CC) $(FLAGS) $(OBJ_DIR)/Collen.o -o Collen
	@printf $(CN_YEL) "				compiled -> Collen"

Grace:
	@$(ASM) Grace.s -o Grace.o
	@mv Grace.o ./$(OBJ_DIR)
	@$(CC) $(FLAGS) $(OBJ_DIR)/Grace.o -o Grace
	@printf $(CN_YEL) "				compiled -> Grace"

Sully:
	@$(ASM) Sully.s -o Sully.o
	@mv Sully.o ./$(OBJ_DIR)
	@$(CC) $(FLAGS) $(OBJ_DIR)/Sully.o -o Sully
	@printf $(CN_YEL) "				compiled -> Sully"

clean:
	@rm -rf $(OBJ_DIR)

fclean: clean
	@rm -rf Collen
	@rm -rf Grace
	@rm -rf Sully
	@rm -rf Grace_kid.s
	@rm -rf Sully_*
	@printf "\n\n\n\n\n\n\n\n"
	@rm -rf $(OBJ_DIR)
	@printf $(CN_BLU) "				all Cleared !!!!"

re: fclean all

CN_YEL = "\e[33;m%s\e[0m\n"
CN_BLU = "\e[34;m%s\e[0m\n"
