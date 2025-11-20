#!/usr/bin/env bash

/usr/bin/vcgencmd measure_temp | awk -F '=' '{print $2}'
