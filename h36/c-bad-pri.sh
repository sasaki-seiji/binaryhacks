#!/bin/sh
gcc -c -Wall -Wextra -Wno-unused-parameter main-c-pri.c
gcc -c -Wall -Wextra c-bad-pri.c
gcc -o c-bad-pri main-c-pri.o c-bad-pri.o -lpthread
./c-bad-pri

