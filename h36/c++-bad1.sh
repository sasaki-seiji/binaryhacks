#!/bin/sh
g++ -c -Wall main-c++.cpp
g++ -c -Wall -fno-threadsafe-statics c++-bad1.cpp
g++ -o c++-bad1 main-c++.o c++-bad1.o -lpthread
./c++-bad1
g++ -S -fno-threadsafe-statics -fverbose-asm c++-bad1.cpp
