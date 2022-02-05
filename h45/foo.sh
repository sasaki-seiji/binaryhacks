#!/bin/sh
gcc -O1 -D_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1 -o foo -Wall -Wextra foo.c
./foo
