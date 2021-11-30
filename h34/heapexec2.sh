#!/bin/sh
gcc -o heapexec2 -Wall heapexec2.c
./heapexec2
gcc -S -Wall -fverbose-asm heapexec2.c
