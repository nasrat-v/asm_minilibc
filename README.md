# asm_minilibc
Mini glibc written in Assembly x86-64.

Compiled as shared library.

For more informations see man glibc.

# Compile
compiling:

    make
    
cleaning objects files:

    make clean
    
cleaning binary files:

    make fclean
    
cleaning all and compiling:

    make re
    
# How to use it
You just need to upload your minilibc library instead of the glibc library with this command

    export LD_PRELOAD=./libasm.so

or execute your program with your minilibc library

    LD_PRELOAD=./libasm.so ./a.out

# Memory functions
## Memcpy functions
The memcpy() function copies n bytes from memory area src to memory area dest. The memory areas must not overlap. Use memmove if the memory areas do overlap.

## Memmove function
The  memmove() function copies n bytes from memory area src to memory area dest. The memory areas may overlap: copying takes place as though the bytes in src are first copied into a temporary array that does not overlap src or dest, and the bytes are then copied from the temporary array to dest.

## Memset function
The memset() function fills the first n bytes of the memory area pointed to by s with the constant byte c.

# Comparaison functions
## Strcmp function
The  strcmp() function compares the two strings s1 and s2. It returns an integer less than, equal to, or greater than zero if s1 is found, respectively, to be less than, to match, or be greater than s2.

## Strncmp function
The strncmp() function is similar to strcmp(), except it compares only the first (at most) n bytes of s1 and s2.

## Strcasecmp function
The  strcasecmp() function performs a byte-by-byte comparison of the strings s1 and s2, ignoring the case of the characters. It returns an integer less than, equal to, or greater than zero if s1 is found, respectively, to be less than, to match, or be greater than s2.

## Strncasecmp function
The strncasecmp() function is similar to strcasecmp(), except that it compares no more than n bytes of s1 and s2.

# Bytes occurence function
## Strchr function
The strchr() function returns a pointer to the first occurrence of the character c in the string s.

## Strpbrk function
The strpbrk() function locates the first occurrence in the string s of any of the bytes in the string accept.

## Strstr function
The strstr() function finds the first occurrence of the substring needle in the string haystack. The terminating null bytes ('\0') are not compared.

## Rindex function
The rindex() function returns a pointer to the last occurrence of the character c in the string s.

# Bytes lenght
## Strcspn function
The strcspn() function calculates the length of the initial segment of s which consists entirely of bytes not in reject.

## Strlen function
The strlen() function calculates the length of the string pointed to by s, excluding the terminating null byte ('\0').

# File descriptor function
## Read function
The read utility shall read a single line from standard input.

## Write function
write() writes up to count bytes from the buffer pointed buf to the file referred to by the file descriptor fd.

