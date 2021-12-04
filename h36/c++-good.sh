#!/bin/sh
g++ -c -Wall main-c++.cpp
g++ -c -Wall c++-good.cpp
g++ -c -Wall other.cpp
g++ -o c++-good main-c++.o other.o c++-good.o -lpthread
./c++-good
