#!/bin/sh
sudo /usr/local/etc/init.d/slimserver stop
hqplayerd &
sleep 5
sudo taskset -p 0x00000008 $(pgrep hqplayerd*)
hqpwv &
