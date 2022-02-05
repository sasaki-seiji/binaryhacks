#!/bin/sh
gcc -fstack-protector -o bar -Wall -Wextra bar.c 
gcc -fstack-protector --param ssp-buffer-size=4 -o bar_4 -Wall -Wextra bar.c
gcc -fstack-protector-all -o bar_all -Wall -Wextra bar.c 
./bar
./bar_4
./bar_all
