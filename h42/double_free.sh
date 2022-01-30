#!/bin/sh
gcc -Wall -Wextra -Wformat=2 -Wstrict-aliasing=2 -o double_free double_free.c
MALLOC_CHECK_=0 ./double_free
MALLOC_CHECK_=1 ./double_free
MALLOC_CHECK_=2 ./double_free
MALLOC_CHECK_=3 ./double_free
