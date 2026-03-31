#!/bin/bash
# =============================================================
# Script 5: Open Source Manifesto Generator (Git Bash Safe)
# Author: Divya Bhaskar | Roll: 24BCY10061
# Course: Open Source Software | VITyarthi
# =============================================================

echo "============================================================"
echo "       OPEN SOURCE MANIFESTO GENERATOR — VITyarthi         "
echo "============================================================"
echo ""
echo "Answer three questions to generate your manifesto."
echo "------------------------------------------------------------"
echo ""

# --- Interactive input ---
read -p "  1. Name one open-source tool you use every day: " TOOL
echo ""
read -p "  2. In one word, what does 'freedom' mean to you?  " FREEDOM
echo ""
read -p "  3. Name one thing you would build and share freely: " BUILD
echo ""

# --- Validation ---
if [ -z "$TOOL" ] || [ -z "$FREEDOM" ] || [ -z "$BUILD" ]; then
    echo "  [!] Please answer all three questions. Re-run the script."
    exit 1
fi

# --- Git Bash friendly username and date ---
USER_NAME=$(echo "$USERNAME" | tr ' ' '_')
DATE=$(date)

OUTPUT="manifesto_${USER_NAME}.txt"

# --- Clear old file ---
> "$OUTPUT"

# --- Write manifesto ---
echo "============================================================" >> "$OUTPUT"
echo "         MY OPEN SOURCE MANIFESTO — PYTHON EDITION         " >> "$OUTPUT"
echo "  Generated on : $DATE" >> "$OUTPUT"
echo "  Author       : $USER_NAME" >> "$OUTPUT"
echo "============================================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "I use $TOOL every day because someone shared it freely." >> "$OUTPUT"
echo "To me, freedom means $FREEDOM." >> "$OUTPUT"
echo "Inspired by open source, I would build $BUILD and share it." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Open source grows when knowledge is shared." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "— $USER_NAME, $DATE" >> "$OUTPUT"
echo "============================================================" >> "$OUTPUT"

# --- Display output ---
echo ""
echo "  [✔] Manifesto saved to: $OUTPUT"
echo ""
cat "$OUTPUT"
echo ""
echo "============================================================"