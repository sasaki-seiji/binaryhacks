#!/bin/sh
g++ -c -Wall -Wextra -Wno-unused-parameter longrun-tls.cpp
g++ -c -Wall -Wextra singleton-tls.cpp
g++ -o longrun-tls longrun-tls.o singleton-tls.o -lpthread
./longrun-tls
