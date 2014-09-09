#! /usr/bin/env bash

i=$1
o=$2
shift 2

for n in "$@"; do
    layout=~/.config/i3/layout-$n.json
    auto=~/.config/i3/auto-$n.sh
    if [[ -r $layout && -r $auto ]]; then
        w="$i:$n"
        i3-msg "workspace $w, move workspace to output $o"
        i3-msg "append_layout $layout"
        . $auto
        let i=i+1
    fi
done
