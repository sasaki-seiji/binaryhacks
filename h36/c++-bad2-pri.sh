#!/bin/sh
g++ -c -Wall -Wextra -Wno-unused-parameter main-c++-pri.cpp
g++ -c -Wall -Wextra -fno-threadsafe-statics c++-bad2.cpp
g++ -o c++-bad2-pri main-c++-pri.o c++-bad2.o -lpthread
g++ -S -fno-threadsafe-statics -fverbose-asm c++-bad2.cpp
g++ -S -fverbose-asm main-c++-pri.cpp
./c++-bad2-pri
