#!/bin/bash
for addr in $(cat repos.txt); do

    dir=$(echo $addr | cut -d / -f 2)
    git -C $dir pull --no-edit upstream master
    git -C $dir push origin master

done
