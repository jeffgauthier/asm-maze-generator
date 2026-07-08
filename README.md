# asm-maze-generator
A program that mimics the famous one-liner Commodore BASIC command to display a random maze on a terminal.

![Screenshot of the one-liner maze command on JVic (VIC-20 emulator](vic20maze.png|width=100) ![Example output](preview.png|width=100)

Coded in Netwide Assembly (NASM, Linux 64-bit).

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
chmod u+x main
./main
```
