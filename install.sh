#!/usr/bin/env bash

BINDIR="$HOME/.local/bin"

if [[ "$UID" = 0 ]]
then
    BINDIR="/usr/local/bin"
fi

mkdir -p "$BINDIR"

cp bin/mp3split "$BINDIR/"

echo "mp3split is installed."
