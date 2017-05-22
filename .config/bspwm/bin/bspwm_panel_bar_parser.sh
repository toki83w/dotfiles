#! /bin/sh
#
# statusbar parser for bspwm

#screen_width=$(sres -W)

NORMIFS=$IFS
FIELDIFS=':'


source $(dirname $0)/panel_config

while read -r line ; do
    case $line in
        T*)
            # window title [trim]
            title=$(echo ${line#?} | sed 's^\(.\{60\}\).*^\1...^')
            title="%{F$TITLE_FG} ${title} ${LPAD} %{F-}"
            ;;
        W*)
            # bspwm internal state
            # WMHDMI1:O1:f2:f3:f4:f5:f6:f7:f8:f9:mLVDS1:F0:Ltiled
            wm_infos=""
            IFS=$FIELDIFS
            set -- ${line#?}
            while [ $# -gt 0 ] ; do
                item=$1
                case $item in
                    [OoFfUu]*)
                        # desktops
                        name=${item#?}
                        case $item in
                            O*)
                                # focused occupied desktop
                                desk="%{B$FOCUS_BG}%{F$FOCUS_FG}${PAD}$name${PAD}%{F-}%{B-}"
                                ;;
                            F*)
                                # focused free desktop
                                desk="%{B$FOCUS_BG}%{F$FOCUS_FG}${PAD}$name${PAD}%{F-}%{B-}"
                                ;;
                            U*)
                                # focused urgent desktop
                                desk="%{B$FOCUS_BG}%{F$URGENT_FG}${PAD}$name${PAD}%{F-}%{B-}"
                                ;;
                            o*)
                                # occupied desktop
                                desk="${PAD}$name${PAD}"
                                ;;
                            f*)
                                # free desktop
                                desk=""
                                ;;
                            u*)
                                # urgent desktop
                                desk="${PAD}%{F$URGENT_FG}$name%{F-}${PAD}"
                                ;;
                        esac
                        [ -z "$desk" ] || wm_infos="${wm_infos}%{A:bspc desktop -f ${name}:}${desk}%{A}"
                        ;;
                    L*)
                        # layout
                        layout=${item#?}
                        [ "$layout" == "M" ] && layout="" || layout=""
                        wm_infos="${wm_infos}${PAD}|${PAD}%{F$LAYOUT_FG}%{T2}${layout}%{T1}%{F-}${PAD}"
                        #wm_infos="${wm_infos}${PAD}|${PAD}%{F$LAYOUT_FG}${layout}%{F-}${PAD}"
                        ;;
                    [Mm]*)
                        # monitor
                        #wm_infos="${wm_infos}${PAD}|${PAD}"
                        wm_infos="${wm_infos}${PAD}"
                        ;;
                esac
                shift
            done
            IFS=$NORMIFS
            ;;
    esac
    #printf "%s\n" "%{l}$wm_infos%{r}${title}"
    printf "%s\n" "%{l}$wm_infos|${PAD}${title}"
done
