#!/bin/sh
g++ -c -Wall -Wextra -Wno-unused-parameter main-c++-pri.cpp
g++ -c -Wall -Wextra c++-bad2.cpp
g++ -o c++-bad2-pri main-c++-pri.o c++-bad2.o -lpthread
./c++-bad2-pri
