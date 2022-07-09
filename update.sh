#!/bin/sh

sed -i '$d' README.md
echo "$1" >> README.md