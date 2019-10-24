#!/usr/bin/env bash

until ping -c 1 'redis' | grep -m 1 "0"; do : ; done

tail -f /var/log/*.log
nohup python3 ./appy.py &
