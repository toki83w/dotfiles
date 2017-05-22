#!/bin/bash

CACHEDIR=${XDG_CACHE_HOME:-"$HOME/.cache"}

if [ -d "$CACHEDIR" ]; then
    CACHE=$CACHEDIR/dmenu_run_recent
else
    CACHE=$HOME/.dmenu_cache_recent
fi

touch $CACHE


# recent commands
RECENT=( $(cat $CACHE) )

echo "recent"
( IFS=$'\n'; echo "${RECENT[*]}" )
echo "============================"

# valid commands
VALID=`dmenu_path`

# invalid commands - remove VALID from RECENT
INVALID=" ${RECENT[*]} "
for item in ${VALID[@]}; do
    INVALID=${INVALID/ ${item} / }
done
INVALID=( $INVALID )


echo "invalid commands"
( IFS=$'\n'; echo "${INVALID[*]}" )
echo "============================"


# now remove INVALID from RECENT
RECENT=" ${RECENT[*]} "
for item in ${INVALID[@]}; do
    RECENT=${RECENT/ ${item} / }
done
RECENT=( $RECENT )

echo "valid recent"
( IFS=$'\n'; echo "${RECENT[*]}" ) > $CACHE
cat $CACHE



#RUN=`(echo "$RECENT"; dmenu_path | grep -vxF "$RECENT") | dmenu "$@"`