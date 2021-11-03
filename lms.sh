#!/bin/sh
sudo killall hqplayerd
sudo killall hqpwv
sudo /usr/local/etc/init.d/slimserver  start
sleep 3
sudo taskset -p 0x00000008 $(pgrep slim*)
