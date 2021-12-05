#!/bin/sh
g++ -c -Wall main-c++.cpp
g++ -c -Wall c++-bad2.cpp
g++ -c -Wall other.cpp
g++ -o c++-bad2 main-c++.o other.o c++-bad2.o -lpthread
./c++-bad2
