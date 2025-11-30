#!/bin/bash

timestamp=$(date +%Y%m%d)
logdate=$(date +%Y-%m-%d-%H:%M)
src=$1
dest="$HOME/backups"
folderName=$(basename "$src")
filename=${folderName}-${timestamp}.tar.gz


if [ -d "$src" ]; then
	echo "creating Backup"
	mkdir -p "$dest"
	tar -czf "$dest/$filename" "$src"
	echo "backup complete $dest/$filename"
	echo "$logdate Backed up $src to $dest with filename $filename" >> $dest/scriptlog.log
	echo "wrote a scriptlog to $dest"
else
	echo "folder not found"
fi
