#!/bin/sh

time=$(date +%F)
todayRate="My heart rate on $time is $1💖"

sed -i "s/^My heart rate.*/$todayRate/" README.md


archivePath="./archives/heart_rate"
archiveText="$time: $1"
if grep -q $time $archivePath; then
    sed -i "s/^$time.*/$archiveText/" $archivePath
else
    echo "$archiveText" >>$archivePath
fi