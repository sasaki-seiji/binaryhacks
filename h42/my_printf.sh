#!/bin/sh
gcc -o my_printf -Wall -Wextra -Wformat=2 my_printf.c
./my_printf
tail -n 5 /var/log/syslog
