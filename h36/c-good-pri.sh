#!/bin/sh
gcc -c -Wall -Wextra -Wno-unused-parameter main-c-pri.c
gcc -c -Wall -Wextra c-good.c
gcc -o c-good-pri main-c-pri.o c-good.o -lpthread
./c-good-pri

