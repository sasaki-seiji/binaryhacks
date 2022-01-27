#!/bin/sh
g++ -c -Wall -Wextra -Wno-unused-parameter longrun-tss.cpp
g++ -c -Wall -Wextra -fthreadsafe-statics singleton-tss.cpp
g++ -o longrun-tss longrun-tss.o singleton-tss.o -lpthread
./longrun-tss
