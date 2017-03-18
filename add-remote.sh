#!/bin/bash
# Add an upstream repository to every repository
# Usage: ./add-remote.sh <git@github.com:org/repo.git>
for addr in $(cat repos.txt); do

    dir=$(echo $addr | cut -d / -f 2)
    git -C $dir pull
    git -C $dir remote add upstream $1

done
