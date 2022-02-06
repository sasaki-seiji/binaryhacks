#!/bin/sh
gcc -c -Wall -Wextra foo.c
gcc -c -Wall -Wextra call-NULL.c
gcc -o call-NULL  call-NULL.o foo.o
./call-NULL
