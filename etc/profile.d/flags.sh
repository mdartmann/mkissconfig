#!/bin/sh

export CARCH='x86_64'
export CHOST="$CARCH-pc-linux-gnu"

export CC=gcc
export CXX=g++
export LD=ld.bfd

export CFLAGS='-march=x86_64-v3 -mtune=generic -O3 -pipe -fno-plt -fexceptions -Wp,-D_FORTIFY_SOURCE=2 -Wformat -Werror=format-security -fstack-clash-protection -fcf-protection'
export CXXFLAGS="$CFLAGS -Wp,-D_GLIBCXX_ASSERTIONS"
export LDFLAGS='-Wl,-O1,--sort-common,--as-needed,-z,relro,-z,now'
export RUSTFLAGS="-C opt-level=2"
export DEBUG_CFLAGS="-g -fvar-tracking-assignments"
export DEBUG_CXXFLAGS="$DEBUG_CFLAGS"
export DEBUG_RUSTFLAGS="-C debuginfo=2"

export MAKEFLAGS="-j$(nproc)"
