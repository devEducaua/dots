#!/bin/sh

set -xe

NOTDIR="$HOME/not/"
TARFILE="not.tar.gz"
DESTPATH="$HOME/hdd/backups/"

tar -czvf "$DESTPATH/$TARFILE" "$NOTDIR"
