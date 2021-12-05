#!/bin/sh
gcc -c -Wall -Wextra -O2 lock.c
gcc -c -Wall -Wextra -O2 main.c
gcc -o lock lock.o main.o -lpthread
gcc -S -fverbose-asm -O2 lock.c
./lock
