#!/bin/bash


source $(dirname $0)/panel_config

if [ $(pgrep -cx bspwm_panel.sh) -gt 1 ] ; then
    printf "%s\n" "The panel is already running." >&2
    exit 1
fi

trap 'trap - TERM; kill 0' INT TERM QUIT EXIT


# geometries
#SCRNW=`bspc query -T -m focused | head -1 | awk -F'[ x]' '{print $2}'`
SCRNW=`sres -W`
DZENW=660
TRAYW=80
H=16
let "X=$SCRNW-$DZENW-$TRAYW"
BARG="${X}x${H}"


# launch the system tray
stalonetray -c /home/luca/.config/bspwm/stalonetrayrc &


# then conky + dzen on the left with system infos
LC_TIME="en_US.UTF-8" conky -c /home/luca/.config/bspwm/conkyrc | dzen2 -e - -h $H -w $DZENW -x $X -y '0' -ta c -fg $FG -bg $BG -fn $FONT &


# setup fifo for statusbar
[ -e "$PANEL_FIFO" ] && rm "$PANEL_FIFO"
mkfifo "$PANEL_FIFO"


# workspace info
bspc subscribe report > "$PANEL_FIFO" &


# title
xtitle -sf 'T%s' > "$PANEL_FIFO" &


# finally the bar on the right (and read commands from it)
bspwm_panel_bar_parser.sh < "$PANEL_FIFO" \
    | lemonbar -p \
               -g "$BARG" \
               -f "$FONT" \
               -f "$FONT2" \
               -B "$BG" \
               -F "$FG" \
               | while read line; do eval "$line"; done &

wait
