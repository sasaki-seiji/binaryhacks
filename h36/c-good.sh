#!/bin/sh
gcc -c -Wall main-c.c
gcc -c -Wall c-good.c
gcc -o c-good main-c.o c-good.o -lpthread
./c-good

