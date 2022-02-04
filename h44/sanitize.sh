#!/bin/sh
gcc -g -fsanitize=address -o sanitize -Wall -Wextra testflap.c 
./sanitize
