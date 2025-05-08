#!/bin/bash

echo "===== SYSTEM INFORMATION ====="
echo

# CPU usage
echo ">> CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Load: " $2 "% user, " $4 "% system, " $8 "% idle"}'
echo

# Memory statistics
echo ">> Memory Usage:"
free -h
echo

# Disk usage
echo ">> Disk Usage:"
df -h
