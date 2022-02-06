#!/bin/sh
gcc -o broken -Wall -Wextra -Wno-unused-parameter broken.c -lpthread
./broken
