#!/bin/sh
gcc -O1 -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1 -o bar2 -Wall -Wextra bar2.c
./bar2 7
./bar2 6
