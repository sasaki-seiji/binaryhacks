#!/bin/sh
gcc -c -fPIE factorial.c
gcc -rdynamic -o factorial -pie factorial.o -ldl
./factorial

