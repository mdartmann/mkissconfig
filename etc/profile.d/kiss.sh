#!/bin/sh

export KISS_GET=curl
export KISS_COMPRESS=zst
export KISS_PATH=/var/db/kiss/repo/core:/var/db/kiss/repo/extra:/var/db/kiss/repo/gui:/var/db/kiss/repo/gnome
export KISS_SU="sudo"

export KISS_HOOK=""
for i in /etc/kiss-hooks/*; do
    export KISS_HOOK="$KISS_HOOK:$i"
done
