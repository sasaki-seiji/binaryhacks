#!/bin/sh
gcc -g -fsanitize=address -o addr-sanitize -Wall -Wextra main.c
./addr-sanitize
