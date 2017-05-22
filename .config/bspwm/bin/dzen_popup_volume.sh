#!/bin/bash


WIDTH=20
HEIGHT=152
XPOS=$((`sres -W` - 338))

source $(dirname $0)/dzen_popup_config

VOL=`amixer get Master | awk -F'[]%[]' '/%/ { print $2 }'`
BAR=`echo "$VOL" | gdbar -bg $bar_bg -fg $bar_fg -h 130 -w 2 -s v`

(
echo -e "$BAR"
) | dzen2 -p -x "$XPOS" -w "$WIDTH" -h "$HEIGHT" -l "$LINES" -sa 'l' -fn "$FONT" ${OPTIONS}

