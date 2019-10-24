#!/usr/bin/env bash

tail -f /var/log/*.log
nohup python3 ./appy.py &
