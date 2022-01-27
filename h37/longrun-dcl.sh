#!/bin/sh
g++ -c -Wall -Wextra -Wno-unused-parameter longrun-dcl.cpp
g++ -c -Wall -Wextra singleton-dcl.cpp
g++ -o longrun-dcl longrun-dcl.o singleton-dcl.o -lpthread
./longrun-dcl
