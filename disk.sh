#!/usr/bin/env bash

df -h | grep /dev/mmcblk0p2 | awk '{print $5}'
