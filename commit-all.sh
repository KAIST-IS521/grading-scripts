#!/bin/bash
# Commit and push all the local modifications to each student repository
# You edit files in each student directory (locally) and then run this script to
# commit them at a time.
# Usage: ./commit-all.sh "message"
for addr in $(cat repos.txt); do

    dir=$(echo $addr | cut -d / -f 2)
    git -C $dir commit -a -m "$1"
    git -C $dir push origin master

done
