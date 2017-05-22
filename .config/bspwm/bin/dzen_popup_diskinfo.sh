#!/bin/bash

LINES=$((`df -h | grep -E '^/dev' | wc -l` + 2))
BASEWIDTH=320
MAXW=`df -h | grep -E '^/dev' | awk -F'%' '{ print $2 }' | wc -L`
WIDTH=$(($BASEWIDTH+$MAXW*6))
XPOS=1280

bar_h="2"
bar_w="130"

[ $(($XPOS+$WIDTH)) -gt `sres -W` ] && XPOS=$((`sres -W` - $WIDTH))

source $(dirname $0)/dzen_popup_config

(
echo "Diskinfo"
echo " "
df -h | grep -E '^/dev' | while read -r F TOTAL USED AVAIL P M; do
    #~ M=${M/\/*\//\/}
    #~ [ ${#M} -gt 12 ] && M="${M:${#M}-12}"
    USE=${P%\%}
    if [ "$USE" -gt 75 ]; then
        BAR=$(echo "$USE" | gdbar -bg $bar_bg -fg $warn -h $bar_h -w $bar_w)
    else
        BAR=$(echo "$USE" | gdbar -bg $bar_bg -fg $bar_fg -h $bar_h -w $bar_w)
    fi
    #~ echo -e "$PAD ^fg("$label")$(printf '%-6s' ${MOUNT:${#MOUNT}-6})^fg() $BAR  $USED / $TOTAL ($AVAIL free)$PAD"
    echo -e "$PAD ^fg("$label")$(printf "%-${MAXW}s" "$M")^fg() $BAR  $(printf "%4s" $USED) / $(printf "%4s" $TOTAL) ($(printf "%4s" $AVAIL) free)$PAD"
    done
) | dzen2 -p -x "$XPOS" -w "$WIDTH" -l "$LINES" -sa 'l' \
        -title-name "popup_diskinfo" -fn "$FONT" ${OPTIONS}

