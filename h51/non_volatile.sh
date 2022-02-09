#!/bin/sh
gcc -o non_volatile -O2 -Wall -Wextra -Wno-unused-parameter non_volatile.c
gcc -S -O2 -fverbose-asm -Wall -Wextra -Wno-unused-parameter non_volatile.c
./non_volatile 
