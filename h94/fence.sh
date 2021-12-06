#!/bin/sh
gcc -c -Wall -Wextra -O2 fence.c
gcc -c -Wall -Wextra -O2 main.c
gcc -o fence fence.o main.o -lpthread
gcc -S -fverbose-asm -O2 fence.c
./fence
