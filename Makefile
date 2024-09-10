# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hfattah <hfattah@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/07/06 11:00:16 by hfattah           #+#    #+#              #
#    Updated: 2024/08/22 13:10:32 by hfattah          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

PROG    = pipex

SRCS    = srcs/pipex.c srcs/utils.c
OBJS    = ${SRCS:.c=.o}
MAIN    = srcs/pipex.c

HEADER  = -I includes

CC      = gcc
CFLAGS  = -Wall -Wextra -Werror

%.o: %.c
	@gcc ${CFLAGS} ${HEADER} -c $< -o $@

all:    ${PROG}

${PROG}: ${OBJS}
	@make re -C ./libft
	@$(CC) ${OBJS} -Llibft -lft -o ${PROG}

clean:
	@make clean -C ./libft
	@rm -f ${OBJS}

fclean: clean
	@make fclean -C ./libft
	@rm -f ${PROG}

re:    fclean all

.PHONY: all clean fclean re




