#!/bin/sh
gcc -o foo-no-pie.o -c -fno-PIE foo.c
gcc -o foo-no-pie -no-pie foo-no-pie.o
./foo-no-pie
objdump --disassemble=main foo-no-pie
