# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cobecque <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/08/22 20:26:10 by cobecque          #+#    #+#              #
#    Updated: 2019/08/12 02:42:32 by cobecque         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: all Collen Grace Sully clean fclean re

CC = python

OBJ_DIR = ./obj

all: Collen Grace Sully

Collen:
	@printf "\n\n\n\n\n\n\n\n"
	@printf $(CN_YEL) "				compiled -> Collen"
	@$(CC) Coleen.py

Grace:
	@printf $(CN_YEL) "				compiled -> Grace"
	@$(CC) Grace.py

Sully:
	@printf $(CN_YEL) "				compiled -> Sully"
	@$(CC) Sully.py

clean:

fclean: clean
	@rm -rf Collen
	@rm -rf Grace
	@rm -rf Sully
	@rm -rf Grace_kid.py
	@rm -rf Sully_*
	@printf "\n\n\n\n\n\n\n\n"
	@printf $(CN_BLU) "				all Cleared !!!!"

re: fclean all

CN_YEL = "\e[33;m%s\e[0m\n"
CN_BLU = "\e[34;m%s\e[0m\n"
