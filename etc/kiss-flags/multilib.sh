#!/bin/sh

export CC="$CC -m32"
export CXX="$CXX -m32"
export PKG_CONFIG_PATH="/usr/lib32/pkgconfig"
export PKG_CONFIG_LIBDIR="/usr/lib32/pkgconfig"
