#!/bin/bash

TIMESTAMP_PATH="${DOTFILES}/.files-update"
NEW_TIMESTAMP=$(date +%s)
OLD_TIMESTAMP=$(cat "${TIMESTAMP_PATH}")
UPDATE_INTERVALL=$((6 * 3600))
# UPDATE_INTERVALL=$((50))

# check for internet connection first
echo -e "GET http://google.com HTTP/1.0\n\n" | nc google.com 80 > /dev/null 2>&1

if [[ ! $? -eq 0 ]] ; then
    echo "No internet connection."
    return 0
fi

# if we got no timestamp of previous update do an update
if [[ $OLD_TIMESTAMP == "" ]] ; then
   dotfiles update
   return 0
fi

INTERVALL="$(($NEW_TIMESTAMP - $OLD_TIMESTAMP))"
if [[ $INTERVALL -gt $UPDATE_INTERVALL ]] ; then
   echo "Looking for updates..."
   dotfiles update
fi
