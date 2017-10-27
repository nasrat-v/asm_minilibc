##
## Makefile for minilibc in /home/nasrat_v/Dev/rendu/tek2/Assembleur/asm_minilibc
## 
## Made by Valentin Nasraty
## Login   <valentin.nasraty@epitech.eu>
## 
## Started on  Mon Mar 20 18:46:23 2017 Valentin Nasraty
## Last update Sun Mar 26 23:34:30 2017 Valentin Nasraty
##

SRC		= strlen.s \
		  strchr.s \
		  strcmp.s \
		  strncmp.s \
		  memset.s \
		  memcpy.s \
		  strstr.s \
		  rindex.s \
		  strcspn.s \
		  strpbrk.s \
		  strcasecmp.s \
		  memmove.s

SRC_BONUS	= write.s \
		  read.s \
		  strncasecmp.s

OBJ		= $(SRC:.s=.o)
OBJ_BONUS	= $(SRC_BONUS:.s=.o)
NAME		= libasm.so

ASFLAGS		= -f elf64
AS		= nasm $(ASFLAGS)

LDFLAGS		= -shared -o
LD		= ld $(LDFLAGS)

RM		= rm -f

all:		compile

compile:	$(OBJ) $(OBJ_BONUS)
		$(LD) $(NAME) $(OBJ) $(OBJ_BONUS)

clean:
		$(RM) $(OBJ) $(OBJ_BONUS)

fclean:		clean
		$(RM) $(NAME)

re:		fclean all

