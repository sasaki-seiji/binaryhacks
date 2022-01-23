#!/bin/sh
g++ -c -Wall -Wextra -Wno-unused-parameter main-dcl.cpp
g++ -c -Wall -Wextra singleton-dcl.cpp
g++ -o singleton-dcl main-dcl.o singleton-dcl.o -lpthread
./singleton-dcl
