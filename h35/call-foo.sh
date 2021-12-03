#!/bin/sh
gcc -o foo-pie.o -c -fPIE foo.c
gcc -rdynamic -o foo-rdynamic -pie foo-pie.o
./foo-rdynamic
gcc -o call-foo call-foo.c ./foo-rdynamic
./call-foo
