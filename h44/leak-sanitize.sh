#!/bin/sh
gcc -g -fsanitize=leak -o leak-sanitize -Wall -Wextra main.c
./leak-sanitize
