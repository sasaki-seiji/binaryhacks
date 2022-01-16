#!/bin/sh
g++ -c -Wall -Wextra -Wno-unused-parameter main-c++-pri.cpp
g++ -c -Wall -Wextra -fno-threadsafe-statics c++-bad1.cpp
g++ -o c++-bad1-pri main-c++-pri.o c++-bad1.o -lpthread
g++ -S -fno-threadsafe-statics -fverbose-asm c++-bad1.cpp
g++ -S -fverbose-asm main-c++-pri.cpp
./c++-bad1-pri
