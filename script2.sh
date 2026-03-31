#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="vlc"

# Check if package is installed (using dpkg for Ubuntu/WSL)
if dpkg -l | grep -q "^ii  $PACKAGE "; then
    echo "$PACKAGE is installed."
    # Find version info
    dpkg -l | grep "^ii  $PACKAGE " | awk '{print "Version:", $3}'
else
    echo "$PACKAGE is NOT installed. Please run: sudo apt install vlc"
fi

echo "--------------------------------"

# Case statement philosophy note
case $PACKAGE in
    httpd)  echo "Apache: the web server that built the open internet" ;;
    mysql)  echo "MySQL: open source at the heart of millions of apps" ;;
    vlc)    echo "VLC: Built by French students, plays anything, ad-free forever." ;;
    firefox) echo "Firefox: A nonprofit fighting for a free and open web." ;;
    python)  echo "Python: A language shaped entirely by its community." ;;
    *)       echo "Unknown software selected." ;;
esac
