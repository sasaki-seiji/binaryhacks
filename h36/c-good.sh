#!/bin/sh
gcc -c -Wall -Wextra main-c.c
gcc -c -Wall -Wextra c-good.c
gcc -o c-good main-c.o c-good.o -lpthread
./c-good

