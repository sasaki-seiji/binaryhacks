#!/bin/sh
g++ -S -fthreadsafe-statics -fverbose-asm -o c++-bad1-safe.s c++-bad1.cpp

