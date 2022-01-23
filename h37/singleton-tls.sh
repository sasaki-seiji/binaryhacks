#!/bin/sh
g++ -c -Wall -Wextra -Wno-unused-parameter main-tls.cpp
g++ -c -Wall -Wextra singleton-tls.cpp
g++ -o singleton-tls main-tls.o singleton-tls.o -lpthread
./singleton-tls
