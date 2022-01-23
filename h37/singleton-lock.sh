#!/bin/sh
g++ -c -Wall -Wextra -Wno-unused-parameter main-lock.cpp
g++ -c -Wall -Wextra singleton-lock.cpp
g++ -o singleton-lock main-lock.o singleton-lock.o -lpthread
./singleton-lock
