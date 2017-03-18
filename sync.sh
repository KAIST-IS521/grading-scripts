#!/bin/bash
# Sync with remote repositories: pull from each student repository.
# Usage: ./sync.sh
for addr in $(cat repos.txt); do

    dir=$(echo $addr | cut -d / -f 2)
    cd $dir
    git pull origin master
    cd ..

done
