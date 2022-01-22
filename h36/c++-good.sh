#!/bin/sh
g++ -c -Wall -Wextra -Wno-unused-parameter main-c++-pri.cpp
g++ -c -Wall -Wextra c++-good.cpp
g++ -c -Wall -Wextra other.cpp
g++ -o c++-good main-c++-pri.o other.o c++-good.o -lpthread
./c++-good
