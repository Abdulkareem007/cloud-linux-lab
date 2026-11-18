#!/bin/bash
# Prints a quick health report of this machine

echo "=== System Report ==="
echo "Date:     $(date)"
echo "Hostname: $(hostname)"
echo "User:     $(whoami)"
echo "Uptime:   $(uptime -p)"
echo
echo "--- Disk usage ---"
df -h /
echo
echo "--- Memory ---"
free -h
echo
echo "--- Top 5 processes by memory ---"
ps aux --sort=-%mem | head -6
