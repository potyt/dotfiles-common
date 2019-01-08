#! /usr/bin/env bash

sleep $1
shift
for n in "$@"; do
    i3-msg "workspace number $n"
    sleep 1.0
done
