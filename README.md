# asm-maze-generator
A program that mimics the behavior of famous one-liner Commodore BASIC command to display a random maze on a terminal.

<img src="vic20maze.png" height=200/> <img src="preview.png" height=200/>

Coded in Netwide Assembly (NASM, Linux 64-bit), which I am currently learning to appreciate the complexity that is masked by general-purpose high-level languages.

# Requirements
Any Linux 64-bit distribution with NASM and GCC. 

For Ubuntu/Debian distros:
```
sudo apt install nasm build-essential
```

# Build and run
```
git clone jeffgauthier/asm-maze-generator.git
cd asm-maze-generator
make
chmod u+x maze
./maze
```
