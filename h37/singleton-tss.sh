#!/bin/sh
g++ -c -Wall -Wextra -Wno-unused-parameter main-tss.cpp
g++ -c -Wall -Wextra -fthreadsafe-statics singleton-tss.cpp
g++ -o singleton-tss main-tss.o singleton-tss.o -lpthread
./singleton-tss
