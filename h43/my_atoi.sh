#!/bin/sh
gcc -o my_atoi -Wall -Wextra my_atoi.c
./my_atoi 123
./my_atoi 2147483647
./my_atoi 2147483648
./my_atoi 4294967297
