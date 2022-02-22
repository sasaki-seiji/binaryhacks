#!/bin/sh
gcc -D_REENTRANT -Wall -Wextra -Wno-unused-parameter -O2 -o sigwait sigwait.c -lpthread
