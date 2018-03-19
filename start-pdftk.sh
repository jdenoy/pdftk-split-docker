#!/bin/bash
trap finish TERM INT

FILENAME=$1

if [ ! -f /tmp/$FILENAME ]; then
  echo "Error: /tmp/$FILENAME does not exist."
  echo "Did you forget to mount it with -v?"
  exit 1
fi

COMMAND="/usr/bin/pdftk $FILENAME burst output %05d_$FILENAME"

$COMMAND
