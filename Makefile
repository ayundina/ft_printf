# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile_p                                         :+:    :+:             #
#                                                      +:+                     #
#    By: ayundina <marvin@codam.nl>                   +#+                      #
#                                                    +#+                       #
#    Created: 2019/04/24 14:56:16 by ayundina      #+#    #+#                  #
#    Updated: 2019/04/24 14:56:21 by ayundina      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS = ft_printf.c \
	   ft_read_flags.c \
	   ft_upply_options.c \
	   ft_fl_hh.c \
	   ft_fl_h.c \
	   ft_fl_l.c \
	   ft_fl_ll.c \
	   ft_fl_capitll.c \
	   ft_fl_hash.c \
	   ft_conv_csp.c \
	   ft_conv_dibouxf.c \
	   ft_conv_none.c \
	   ft_fl_hash.c \
	   ft_fl_plus.c \
	   ft_fl_sp.c \
	   ft_fl_precision.c \
	   ft_fl_minus.c \
	   ft_fl_zero.c \
	   ft_fl_width.c \
	   ft_ulltoa_base.c \
	   ft_dtoa.c\
	   ft_arandomtoi.c

OBJ = ft_printf.o \
	   ft_read_flags.o \
	   ft_upply_options.o \
	   ft_fl_hh.o \
	   ft_fl_h.o \
	   ft_fl_l.o \
	   ft_fl_ll.o \
	   ft_fl_capitll.o \
	   ft_fl_hash.o \
	   ft_conv_csp.o \
	   ft_conv_dibouxf.o \
	   ft_conv_none.o \
	   ft_fl_hash.o \
	   ft_fl_plus.o \
	   ft_fl_sp.o \
	   ft_fl_precision.o \
	   ft_fl_minus.o \
	   ft_fl_zero.o \
	   ft_fl_width.o \
	   ft_ulltoa_base.o \
	   ft_dtoa.o\
	   ft_arandomtoi.o

OBJ_LFT = $(addprefix ./libft/, ft_atoi.o ft_bzero.o ft_isalnum.o ft_isalpha.o ft_isascii.o ft_isdigit.o \
	ft_isprint.o ft_itoa.o ft_memalloc.o ft_memccpy.o ft_memchr.o \
	ft_memcmp.o ft_memcpy.o ft_memdel.o ft_memmove.o ft_memset.o \
	ft_putchar_fd.o ft_putchar.o ft_putendl_fd.o ft_putendl.o ft_putnbr_fd.o \
	ft_putnbr.o ft_putstr_fd.o ft_putstr.o ft_strcat.o ft_strchr.o \
	ft_strclr.o ft_strcmp.o ft_strcpy.o ft_strdel.o ft_strdup.o ft_strequ.o \
	ft_striter.o ft_striteri.o ft_strjoin.o ft_strlcat.o ft_strlen.o \
	ft_strmap.o ft_strmapi.o ft_strncat.o ft_strncmp.o ft_strncpy.o \
	ft_strnequ.o ft_strnew.o ft_strnstr.o ft_strrchr.o ft_strsplit.o \
	ft_strstr.o ft_strsub.o ft_strtrim.o ft_tolower.o ft_toupper.o \
	ft_lstnew.o ft_lstdelone.o ft_lstdel.o ft_lstadd.o ft_lstiter.o \
	ft_lstmap.o ft_intlen.o ft_getnum.o ft_dupword.o ft_getwords.o \
	ft_countwords.o ft_beg_sp.o ft_end_sp.o)

all: $(NAME)

$(NAME):
	make -C ./libft
	gcc -g -Wall -Wextra -Werror -c $(SRCS)
	ar rc $(NAME) $(OBJ) $(OBJ_LFT)
	ranlib $(NAME)

clean:
	make clean -C ./libft
	/bin/rm -f $(OBJ)

fclean: clean
	make fclean -C ./libft
	/bin/rm -f $(NAME)

re: fclean all
