#! /bin/zsh

# Dev: Clovis Wanderley Bertholini Sobrinho
# Date: August, 27, 2020.
# This script change the backlight's brightness from my desktop pc LG all in one, that uses intel backlight control.


# variables declarations
tax=0
brightness=0
maxBrightness=0

# main code
if cat /sys/class/backlight/intel_backlight/brightness
then
	echo -e "Maximum brightness value --> \c"
	brightness=`cat /sys/class/backlight/intel_backlight/max_brightness`
	echo $brightness
	echo -e "Actual brightness value  --> \c"
	cat /sys/class/backlight/intel_backlight/actual_brightness
	echo "How many percent of brightness do you want (please input an integer from 10 to 100): " 
	read tax
        if [ $tax -lt 10 ] || [ $tax -gt 100 ]
	then
		echo "Input out of range, usage: 10 .. 100"
		exit 1
        else
		brightness=$[$brightness * $tax / 100]
		sudo chmod 666 /sys/class/backlight/intel_backlight/brightness
		echo $brightness | cat > /sys/class/backlight/intel_backlight/brightness
		sudo chmod 644 /sys/class/backlight/intel_backlight/brightness
		echo -e "Brightness seted up to \c"
		cat /sys/class/backlight/intel_backlight/brightness
		echo "Brightness changed with success!"
		exit 0
	fi
else
	echo "Can't find file or directory"
	exit 1
fi
	
        	
