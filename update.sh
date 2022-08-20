#!/bin/sh

text="My heart rate on $(date +%F) is $1 💖"
sed -i "s/^My heart rate.*/$text/" README.md
echo "$(date +%F): $1" >>./archives/heart_rate.md