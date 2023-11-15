# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: caunhach <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/25 21:47:58 by caunhach          #+#    #+#              #
#    Updated: 2023/02/25 23:12:59 by caunhach         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS =	ft_printf.c \
		print_char.c \
		print_str.c \
		print_ptr.c \
		print_int.c \
		print_hex.c \
		print_unsigned.c

OBJS = $(SRCS:.c=.o)

LIBFT = libft

LIBFT_PATH = libft/libft.a

FLAGS = -Wall -Wextra -Werror

$(NAME) : $(LIBFT) $(OBJS)
	make -C $(LIBFT)/
	cp $(LIBFT_PATH) $(NAME)
	ar rc $(NAME) $(OBJS)

$(OBJS):
	gcc $(FLAGS) -c $(SRCS) -I.

all: $(NAME)

clean:
	rm -f $(OBJS)
	make clean -C $(LIBFT)
fclean: clean
	rm -f $(NAME)
	make fclean -C $(LIBFT)
re : fclean all

.PHONY: all bonus clean fclean re