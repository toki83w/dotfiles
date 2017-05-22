#!/bin/bash

# pop-up calendar for dzen

WIDTH=134
LINES=8
XPOS=$((`sres -W` - 288))

source $(dirname $0)/dzen_popup_config

# define pipe
PIPE=/tmp/calendar_pipe

# if terminated by TERM
trap "rm -f $PIPE" SIGTERM

TODAY=$(expr `date +'%d'` + 0)
MONTH="10#$(date +'%m')"
YEAR="10#$(date +'%Y')"

MM=${1:-"$MONTH"}
YY=${2:-"$YEAR"}
NEXT=$((MM+1))
PREV=$((MM-1))
let Y_NEXT=Y_PREV=YY
if [[ $NEXT -eq 13 ]]; then
    NEXT=1
    Y_NEXT=$((YY+1))
fi

if [[ $PREV -eq 0 ]]; then
    PREV=12
    Y_PREV=$((YY-1))
fi

# generate calender
if [[ $MM -eq $MONTH ]] && [[ $YY -eq $YEAR ]]; then  # current month, highlight header and date
    CAL=$(LC_TIME="en_US.UTF-8" cal -m | sed -re "s/^/ /;s/^(.*[A-Za-z][A-Za-z]*.*)$/^fg($highlight)\1^fg()/;s/(^|[ ])($TODAY)($|[ ])/\1^bg($highlight2)^fg($highlight)\2^fg()^bg()\3/")
else  # another month, just highlight header
    CAL=$(LC_TIME="en_US.UTF-8" cal -m "$MM" "$YY" | sed -re "s/^/ /;s/^(.*[A-Za-z][A-Za-z]*.*)$/^fg($highlight)\1^fg()/")
fi


if [[ -e $PIPE ]]; then
    rm -f $PIPE
fi
# read from pipe
mkfifo "$PIPE"
( dzen2 -p -u -x $XPOS -w $WIDTH -l $LINES -ta 'l' -sa 'l' -title-name 'popup_calendar' -fn "$FONT" ${OPTIONS} < "$PIPE"
   rm -f "$PIPE" ) &

# feed the pipe [and exit after 8s]
(
echo "$CAL"
echo "^fg($highlight)^ca(1, $0 $PREV $Y_PREV) << Prev^ca()      ^ca(1, $0 $NEXT $Y_NEXT)Next >>^ca()^fg()"
) > "$PIPE"

