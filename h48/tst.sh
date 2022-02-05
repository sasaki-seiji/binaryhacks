#!/bin/sh
gcc -o tst -Wall -Wextra tst.c
gcc -o tst-O2 -O2 -Wall -Wextra tst.c
./tst
./tst-O2
