#!/bin/sh
g++ -c -Wall -Wextra -Wno-unused-parameter main-c++-pri.cpp
g++ -c -Wall -Wextra c++-bad2.cpp
g++ -c -Wall -Wextra other.cpp
g++ -o c++-bad2-fiasco main-c++-pri.o other.o c++-bad2.o -lpthread
./c++-bad2-fiasco
