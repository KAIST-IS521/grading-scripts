#!/bin/bash
# Clone all the repositories in the repos.txt
# Usage: ./clone.sh
for addr in $(cat repos.txt); do

    git clone $addr
    if [[ $? != 0 ]]; then
        echo FAILED to clone $addr
        exit 1
    fi
    sleep 10

done
