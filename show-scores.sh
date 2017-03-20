#!/bin/bash
for f in grades-*/Score.md
do
    grep '*' $f | awk -F: '{sum += $2} END {print sum}' | tr -d '\n'
    echo -n ", "
    echo -n $f | cut -d- -f2 | cut -d/ -f1
done | sort -r -n
