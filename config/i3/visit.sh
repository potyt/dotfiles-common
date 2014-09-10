#! /usr/bin/env bash

sleep $1
shift
for n in "$@"; do
    i3-msg "workspace number $n"
done
