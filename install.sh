#!/bin/sh

set -e
set -u

src=http2ipfs
dst=/usr/local/bin/http2ipfs

echo cp "$src" "$dst"
cp "$src" "$dst"
