#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4.sh mylog.txt "error"

LOGFILE=$1
KEYWORD=${2:-"error"} 
COUNT=0

# Do-while style retry if file is empty or missing
while [ ! -s "$LOGFILE" ]; do
    echo "File '$LOGFILE' is empty or not found."
    read -p "Please enter a valid log file path: " LOGFILE
done

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "--------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "--------------------------------"
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
