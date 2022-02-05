#!/bin/sh
gcc -O1 -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -o baz -Wall -Wextra baz.c
./baz %n
