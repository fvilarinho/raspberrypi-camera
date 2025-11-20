#!/usr/bin/env bash

pwd=$HOME/camera

$pwd/stop.sh

devices=($(ls /dev/video*))
deviceId=${devices[0]}
templateFilename=$pwd/motion.conf.template
configFilename=$pwd/motion.conf

cp -f $templateFilename $configFilename

sed -i -e 's|${DEVICE_ID}|'"$deviceId"'|g' $configFilename

motion_cmd=$(which motion)

$motion_cmd -b -c $pwd/motion.conf -l $pwd/motion.log
