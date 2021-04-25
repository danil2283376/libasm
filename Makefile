# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hguini <hguini@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/07 19:36:58 by hguini            #+#    #+#              #
#    Updated: 2021/04/07 20:23:27 by hguini           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

SRCS =	ft_strlen.s \
		ft_strcpy.s \
		ft_strcmp.s \
		ft_write.s	\
		ft_read.s	\
		ft_strdup.s

OBJS = $(SRCS:.s=.o)

%.o	: %.s
	nasm -f macho64 $< -o $@

$(NAME): $(OBJS) 
	ar rcs $(NAME) $(OBJS)

all: $(NAME)

test:
	gcc -Wall -Wextra -Werror libasm.a main.c -o test
	./test

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)
	rm -f test

re: fclean all
