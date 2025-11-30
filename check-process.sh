#!/bin/bash

process=$1

if pgrep -x  $process > /dev/null; then
	echo "process: $process is running"
else
	echo "not running"
fi
