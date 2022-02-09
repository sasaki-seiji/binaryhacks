#!/bin/sh
gcc -o async_signal_unsafe -Wall -Wextra -Wno-unused-parameter async_signal_unsafe.c -lpthread
./async_signal_unsafe 
