#!/bin/sh
gcc -o my_printf2 -Wall -Wextra -Wformat=2 my_printf2.c
./my_printf2
tail -n 5 /var/log/syslog
