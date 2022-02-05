#!/bin/sh
gcc -O1 -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1 -o bar -Wall -Wextra bar.c
./bar 12345
./bar 123456
