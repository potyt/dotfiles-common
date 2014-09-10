#! /usr/bin/env bash

sleep $1
o=$2
shift 2

if display-connected $o; then
    for n in "$@"; do
        i3-msg "workspace number $n"
        i3-msg "move workspace to output $o"
    done
fi
i3-msg "workspace next_on_output"
