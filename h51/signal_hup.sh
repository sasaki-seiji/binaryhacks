#!/bin/sh
./async_signal_unsafe &
pid=$!
sleep 5
ps
kill -HUP $pid
sleep 10
ps 
kill -9 $pid
sleep 1
ps
