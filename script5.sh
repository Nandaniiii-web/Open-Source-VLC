#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Compose the paragraph
echo "Generating manifesto..."

# Use alias concept via comment
# alias view_manifesto='cat $OUTPUT'

echo "========================================" > "$OUTPUT"
echo "        MY OPEN SOURCE MANIFESTO        " >> "$OUTPUT"
echo " Date: $DATE                            " >> "$OUTPUT"
echo "========================================" >> "$OUTPUT"
echo "I believe that technology should empower people." >> "$OUTPUT"
echo "Every day, I rely on tools like $TOOL to get things done without being tracked or charged." >> "$OUTPUT"
echo "To me, digital freedom means $FREEDOM." >> "$OUTPUT"
echo "If I had the time and skills, I would build a $BUILD and release it under the GPL license," >> "$OUTPUT"
echo "so that anyone in the world could use it, learn from it, and improve it." >> "$OUTPUT"

echo "Manifesto saved to $OUTPUT"
echo ""
echo "Here is what you wrote:"
cat "$OUTPUT"
