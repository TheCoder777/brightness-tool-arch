#!/bin/bash
if [ "$1" -le 0 ]; then #if brightness is '0' the screen would be black!
	echo "Brightness can not be zero!"
	exit
fi

if [ -z $1 ]; then
	echo -n "Brightness: "
	echo $(cat /sys/class/backlight/intel_backlight/brightness)
	exit

elif [[ "$1" == "+"* ]]; then
	operator="+"
	old=$(cat /sys/class/backlight/intel_backlight/brightness)
	add=${1//$operator/}
	sum=$(($old + $add))
	sudo chmod 666 /sys/class/backlight/intel_backlight/brightness
	echo "changing brightness to: $sum"
	sudo echo "$sum" > /sys/class/backlight/intel_backlight/brightness
	exit

elif [[ "$1" == "-"* ]]; then
	operator="-"
	old=$(cat /sys/class/backlight/intel_backlight/brightness)
	add=${1//$operator/}
	diff=$(($old - $add))	
	sudo chmod 666 /sys/class/backlight/intel_backlight/brightness
	echo "changing brightness to: $diff"
	sudo echo "$diff" > /sys/class/backlight/intel_backlight/brightness
	exit

else	
	sudo chmod 666 /sys/class/backlight/intel_backlight/brightness
	echo setting brightness to $1...
	sudo echo "$1" > /sys/class/backlight/intel_backlight/brightness
	exit

fi

# LICENCE

# MIT License

# Copyright (c) 2019 TheCoder777

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

