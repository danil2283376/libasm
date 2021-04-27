# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scolen <scolen@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/07 19:36:58 by hguini            #+#    #+#              #
#    Updated: 2021/04/27 09:58:11 by scolen           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

HEADER = libasm.h

SRC =	ft_strlen.s\
		ft_strcmp.s\
		ft_strcpy.s\
		ft_strdup.s\
		ft_read.s\
		ft_write.s

OBJ = $(SRC:.s=.o)

FLAGS = -f macho64

CC = gcc

%.o: %.s
	nasm ${FLAGS}  $<

all: ${NAME}
	gcc main.c libasm.a
	./a.out

${NAME}: ${OBJ} ${HEADER}
	ar -rcs ${NAME} ${OBJ}

clean:
	rm -f ${OBJ}

fclean: clean
	rm -f ${NAME} a.out

re:
	fclean
	make all
