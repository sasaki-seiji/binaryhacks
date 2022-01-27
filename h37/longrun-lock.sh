#!/bin/sh
g++ -c -Wall -Wextra -Wno-unused-parameter longrun-lock.cpp
g++ -c -Wall -Wextra singleton-lock.cpp
g++ -o longrun-lock longrun-lock.o singleton-lock.o -lpthread
./longrun-lock
