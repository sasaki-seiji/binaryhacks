#!/bin/sh
g++ -c -Wall -Wextra -Wno-unused-parameter longrun-nolock.cpp
g++ -c -Wall -Wextra singleton-nolock.cpp
g++ -o longrun-nolock longrun-nolock.o singleton-nolock.o -lpthread
./longrun-nolock
