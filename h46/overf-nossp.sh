#!/bin/sh
gcc -fno-stack-protector -o overf-nossp -Wall -Wextra overf.c
./overf-nossp 01234567
./overf-nossp 012345678
