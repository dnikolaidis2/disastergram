#!/bin/bash

SCRIPT=$1

args=("$@")

SCRIPTARGS=""

# Get passed arguments without base command
for (( i = 0; i < $#; i++ )); do
	if [ $i -ne 0 ]; then
		SCRIPTARGS="$SCRIPTARGS ${args[$i]}"
	fi
done

# for every directory search if the script exists
# and run it with supplied args
for D in *; do
    if [ -d "${D}" ]; then
        pushd "${D}"
        if [ -f "$SCRIPT" ]; then
        	chmod +x $SCRIPT
            # python interpreter might have not
            # been set in this way. Run with an alternative
            if [ -f "/usr/local/bin/python" ]; then
        	   ./$SCRIPT$SCRIPTARGS
            else
                python3 $SCRIPT$SCRIPTARGS
            fi
        fi
        popd > /dev/null
    fi
done