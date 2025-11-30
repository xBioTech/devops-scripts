#!/bin/bash

if [ -z "$1" ]; then
    echo "usage: ./backup2.sh <folder>"
exit 1
fi


source=$1
destination="./backup-$(date +%Y%m%d-%H%M%S)"

echo "Backing up $source to $destination"

mkdir $destination
cp -r $source $destination

echo "backup complete"
