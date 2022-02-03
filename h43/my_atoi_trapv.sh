#!/bin/sh
gcc -ftrapv -g -o my_atoi_trapv -Wall -Wextra my_atoi.c
./my_atoi_trapv 123
./my_atoi_trapv 2147483647
./my_atoi_trapv 2147483648
./my_atoi_trapv 4294967297
