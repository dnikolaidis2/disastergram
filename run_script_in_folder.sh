#!/bin/bash

SCRIPT=$1

args=("$@")

SCRIPTARGS=""

for (( i = 0; i < $#; i++ )); do
	if [ $i -ne 0 ]; then
		SCRIPTARGS="$SCRIPTARGS ${args[$i]}"
	fi
done

for D in *; do
    if [ -d "${D}" ]; then
        pushd "${D}"
        if [ -f "$SCRIPT" ]; then
        	chmod +x $SCRIPT
        	./$SCRIPT$SCRIPTARGS
        fi
        popd > /dev/null
    fi
done