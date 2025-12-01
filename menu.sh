#!/bin/bash

echo "Choose an option:"
echo "1) Show disk usage"
echo "2) list all running processes"
echo "3) Backup home folder"
echo "4) Show date and time"
echo "5) Exit"

read number

src=$1
dest=~/Backup-Home-$(date +%Y-%m-%d)

if [ $number -eq 1 ]; then
	echo "Showing disk usage"
	df -h
elif [ $number -eq 2 ]; then
	echo "showing running processes"
	ps aux
elif [ $number -eq 3 ]; then
	mkdir -p $dest
	echo "enter source folder"
	read src
	cp -r $src $dest
	echo "folder: $src got copied to $dest Backup complete"
elif [ $number -eq 4 ]; then
	echo "$(date +%Y-%m-%d_%H:%M)"
elif [ $number -eq 5 ]; then
	exit 1
fi
