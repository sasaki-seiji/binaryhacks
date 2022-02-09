#!/bin/sh
gcc -o volatile -O2 -Wall -Wextra -Wno-unused-parameter volatile.c
gcc -S -O2 -fverbose-asm -Wall -Wextra -Wno-unused-parameter volatile.c
./volatile 
