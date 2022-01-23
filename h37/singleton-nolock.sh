#!/bin/sh
g++ -c -Wall -Wextra -Wno-unused-parameter main-nolock.cpp
g++ -c -Wall -Wextra singleton-nolock.cpp
g++ -o singleton-nolock main-nolock.o singleton-nolock.o -lpthread
./singleton-nolock
