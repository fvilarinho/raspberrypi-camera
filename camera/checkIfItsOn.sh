#!/bin/bash

result=$(ps -def | awk {'print $8'} | grep motion)

if [ -n "$result" ]; then
	echo true
else
	echo false
fi
