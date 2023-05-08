default: rebuild run

rebuild: lib main

run:
    ./main

lib:
    nasm -f elf64 func.asm -o func.o 
    clang -o func.so --shared func.o

main:
    clang -o main main.c

clean: 
    rm func.o func.so main
