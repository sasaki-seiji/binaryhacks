#!/bin/sh
gcc -g -fmudflap -o testflap -Wall -Wextra testflap.c -lmudflap
./testflap
