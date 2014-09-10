#! /usr/bin/env bash

i3-msg "workspace 1"
i=1
for n in "$@"; do
    layout=~/.config/i3/layout-$n.json
    auto=~/.config/i3/auto-$n.sh
    if [[ -r $layout && -r $auto ]]; then
        w="$i:$n"
        i3-msg "workspace $w"
        i3-msg "append_layout $layout"
        . $auto
        sleep 0.1
        let i=i+1
    fi
done
i3-msg "workspace number 1"
