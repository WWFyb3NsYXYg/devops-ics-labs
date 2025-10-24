#!/bin/bash
# Скрипт збирає інформацію про систему

echo "===== System Information ====="
echo "Hostname: $(hostname)"
echo
echo "===== Network Interfaces ====="
ip -o -4 addr show | awk '{print "Interface:", $2, "IP:", $4}'
echo
echo "===== Kernel Version ====="
uname -r
echo
echo "===== System Uptime ====="
uptime -p
echo
echo "===== Current User ====="
whoami

