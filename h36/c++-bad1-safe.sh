#!/bin/sh
g++ -c -Wall -Wextra -Wno-unused-parameter main-c++-pri.cpp
g++ -o c++-bad1-safe.o -c -Wall -Wextra -fthreadsafe-statics c++-bad1.cpp
g++ -o c++-bad1-safe main-c++-pri.o c++-bad1-safe.o -lpthread
g++ -o c++-bad1-safe.s -S -fthreadsafe-statics -fverbose-asm c++-bad1.cpp
g++ -S -fverbose-asm main-c++-pri.cpp
./c++-bad1-safe

