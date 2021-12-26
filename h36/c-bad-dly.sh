#!/bin/sh
gcc -c -Wall -Wextra -Wno-unused-parameter main-c.c
gcc -c -Wall -Wextra c-bad-dly.c
gcc -o c-bad-dly main-c.o c-bad-dly.o -lpthread
./c-bad-dly

