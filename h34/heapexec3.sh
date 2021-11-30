#!/bin/sh
gcc -o heapexec3 -Wall heapexec3.c
./heapexec3
gcc -S -Wall -fverbose-asm heapexec3.c
