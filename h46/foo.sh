#!/bin/sh
gcc -S -fstack-protector -fverbose-asm -Wall -Wextra foo.c 
