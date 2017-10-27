# asm_minilibc
Mini glibc written in Assembly x86-64 and compiling as shared library.

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

    export LD_PRELOAD=./libasm.so
