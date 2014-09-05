#! /usr/bin/env bash

. ~/.config/i3/auto-scratchpad.sh

i=1
for n in "$@"; do
    layout=~/.config/i3/layout-$n.json
    auto=~/.config/i3/auto-$n.sh
    if [[ -r $layout && -r $auto ]]; then
        w="$i:$n"
        i3-msg "workspace $i, rename workspace to $w"
        i3-msg "append_layout $layout"
        . $auto

        let i=i+1
    fi
done
