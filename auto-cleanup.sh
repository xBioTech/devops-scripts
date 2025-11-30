#!/bin/bash

path=$1

find ~/$path -type f -mtime +3 -delete
	echo "old files deleted"
