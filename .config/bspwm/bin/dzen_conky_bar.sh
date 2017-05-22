#!/bin/bash

SCRNW=`bspc query -T -m focused | head -1 | awk -F'[ x]' '{print $2}'`
DZENW=560
TRAYW=96
let "X=$SCRNW-$DZENW-$TRAYW"

FG='#ffffff'
BG='#000000'
FONT='-*-fixed-*-r-normal-*-10-120-*-*-*-*-iso8859-*'
conky -c /home/luca/.config/bspwm/conkyrc | dzen2 -e - -h '16' -w $DZENW -x $X -y '20' -ta c -fg $FG -bg $BG -fn $FONT