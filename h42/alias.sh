#!/bin/sh
gcc alias.c && ./a.out
gcc -O2 alias.c && ./a.out
gcc -O2 -Wstrict-aliasing=2 alias.c
