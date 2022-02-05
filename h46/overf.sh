#!/bin/sh
gcc -o overf-ssp -Wall -Wextra overf.c
./overf-ssp 01234567
./overf-ssp 012345678
