all: maze

maze.o: maze.asm
	nasm -felf64 -o maze.o maze.asm

maze: maze.o
	gcc -no-pie -o maze maze.o
