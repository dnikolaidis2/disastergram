#!/bin/bash

GENSCRIPT=generate_instance.py

for D in *; do
    if [ -d "${D}" ]; then
        pushd "${D}"
        if [ -f "$GENSCRIPT" ]; then
        	chmod +x $GENSCRIPT
        	./$GENSCRIPT
        fi
        popd
    fi
done