#!/bin/sh
gcc foo.c
./foo
objdump --disassemble=main foo
