#!/bin/sh

FILE=/sys/class/power_supply/sony_controller_battery_ac:fd:93:1f:71:ea/capacity
if [ -f $FILE ]; then
	FILE_CONTENT=`cat $FILE`
	echo "   $FILE_CONTENT%"
else
	echo ""
fi
