#!/bin/sh
gcc -o broken -Wall -Wextra -Wno-unused-parameter broken.c -lpthread
gcc -D_REENTRANT -O2 -fPIC -shared -o safe_localtime.so safe_localtime.c
LD_PRELOAD=./safe_localtime.so ./broken
