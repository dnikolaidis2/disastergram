#!/bin/bash

MANAGESCRIPT=manage.py

for D in *; do
    if [ -d "${D}" ]; then
        pushd "${D}"
        if [ -f "$MANAGESCRIPT" ]; then
        	chmod +x $MANAGESCRIPT
        	./$MANAGESCRIPT build all --push
        fi
        popd
    fi
done