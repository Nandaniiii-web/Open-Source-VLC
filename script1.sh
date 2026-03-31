#!/bin/bash
# Script 1: System Identity Report
# Author: [Type Your Name Here] | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="[Type Your Name Here]" 
SOFTWARE_CHOICE="VLC Media Player" 

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep -E '^PRETTY_NAME=' | cut -d '"' -f 2)
CURRENT_DATE=$(date)

# --- Display ---
echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Kernel    : $KERNEL"
echo "OS Distro : $DISTRO"
echo "User      : $USER_NAME"
echo "Uptime    : $UPTIME"
echo "Date      : $CURRENT_DATE"
echo ""
echo "License Note: The Linux Kernel is licensed under the GPL v2."
echo "My chosen software, $SOFTWARE_CHOICE, is also licensed under the GPL."
