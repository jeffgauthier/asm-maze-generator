all: main

main.o: main.asm
	nasm -felf64 -o main.o main.asm

main: main.o
	gcc -no-pie -o main main.o
