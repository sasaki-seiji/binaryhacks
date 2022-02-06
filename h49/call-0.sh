#!/bin/sh
gcc -c -Wall -Wextra foo.c
gcc -c -Wall -Wextra call-0.c
gcc -o call-0  call-0.o foo.o
./call-0
