#!/bin/bash sh

tail -f /var/log/*.log
nohup python3 ./appy.py &
