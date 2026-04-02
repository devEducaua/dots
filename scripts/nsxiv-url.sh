#!/bin/sh

url="$1"

[ -z "$url" ] && exit 1

wget -O tmpimg -q $url

nsxiv tmpimg

rm tmpimg
