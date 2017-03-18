#!/bin/bash
for addr in $(cat repos.txt); do

    dir=$(echo $addr | cut -d / -f 2)
    cd $dir
    git pull --no-edit upstream master
    git push origin master
    cd ..

done
