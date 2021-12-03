#!/bin/sh
gcc -o foo-pie.o -c -fPIE foo.c
gcc -o foo-pie -pie foo-pie.o
./foo-pie
objdump --disassemble=main foo-pie
