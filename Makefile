# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cobecque <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/08/22 20:48:14 by cobecque          #+#    #+#              #
#    Updated: 2018/08/22 20:50:34 by cobecque         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: all asm c clean fclean re

ASM_PATH = ./ASM
C_PATH = ./C

all: asm c

asm:
	@make -C $(ASM_PATH)

c:
	@make -C $(C_PATH)

clean:
	@make clean -C $(ASM_PATH)
	@make clean -C $(C_PATH)

fclean:
	@make fclean -C $(ASM_PATH)
	@make fclean -C $(ASM_PATH)

re: fclean all
