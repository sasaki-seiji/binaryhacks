#!/bin/sh
gcc -o no-sanitize -Wall -Wextra main.c
./no-sanitize
