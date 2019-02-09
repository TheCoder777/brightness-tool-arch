#!/bin/bash

if [ -z $1 ]; then
		echo $(cat /sys/class/backlight/intel_backlight/brightness)
elif [ "$1" == *"+"* ]; then
		old=$(cat /sys/class/backlight/intel_backlight/brightness)
		add=$($1%"+")

sudo chmod 666 /sys/class/backlight/intel_backlight/brightness
echo setting brightness to $1...
sudo echo "$1" > /sys/class/backlight/intel_backlight/brightness

