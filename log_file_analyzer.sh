#!/bin/bash
# =============================================================
# Script 4: Log File Analyzer
# Author: Divya Bhaskar | Roll: 24BCY10061
# Course: Open Source Software | VITyarthi
# Description: Reads a log file line by line, counts occurrences
#              of a keyword, and shows last 5 matches.
# =============================================================

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

echo "============================================================"
echo "              LOG FILE ANALYZER — FOSS AUDIT               "
echo "============================================================"

# If no valid log file is provided, create a sample one
if [ -z "$LOGFILE" ] || [ ! -f "$LOGFILE" ]; then
    echo "[!] Log file not found. Creating sample log..."
    LOGFILE="sample.log"

    echo "error: failed to start service" > $LOGFILE
    echo "warning: low memory" >> $LOGFILE
    echo "info: process started" >> $LOGFILE
    echo "error: retrying connection" >> $LOGFILE
    echo "error: timeout occurred" >> $LOGFILE
fi

echo "Log File : $LOGFILE"
echo "Keyword  : $KEYWORD"
echo "------------------------------------------------------------"

# While-read loop
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo ""
echo "Total matches for '$KEYWORD' : $COUNT"
echo ""

# Show last 5 matching lines
echo "--- Last 5 Matches ---"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo "============================================================"