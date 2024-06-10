#! /usr/bin/env bash

CFLAGS="$(pkg-config theora --cflags-only-I) -I/opt/homebrew/opt/xvid/include" \
LDFLAGS="$(pkg-config theora --libs) -L/opt/homebrew/opt/xvid/lib" \
    ./brew-config.sh
