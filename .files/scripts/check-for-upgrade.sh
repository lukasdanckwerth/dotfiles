#!/bin/bash

TIMESTAMP_PATH="${DOTFILES}/.files-update"
NEW_TIMESTAMP=$(date +%s)
OLD_TIMESTAMP=$(cat "${TIMESTAMP_PATH}")
UPDATE_INTERVALL=$((6 * 3600))
# UPDATE_INTERVALL=$((50))

if [[ $OLD_TIMESTAMP == "" ]] ; then
   dotfiles update
   return 0
fi

INTERVALL="$(($NEW_TIMESTAMP - $OLD_TIMESTAMP))"
if [ $INTERVALL -gt $UPDATE_INTERVALL ] ; then
   echo "Looking for updates..."
   dotfiles update
fi
