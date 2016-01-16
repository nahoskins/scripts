#!/bin/bash
#~/Scripts/brightnessup.sh
 
file="/sys/class/backlight/gmux_backlight/brightness"
level=$(cat $file)
amount=$1
echo $(( level + amount )) > $file
echo $level
