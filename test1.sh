#!/bin/bash

if [ -d $1 ]; then
	echo "folder exists"
else
	echo "folder does not exist on your machine"
fi
