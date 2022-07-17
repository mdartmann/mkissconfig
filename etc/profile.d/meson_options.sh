#!/bin/sh

export MESON_OPTIONS="--prefix /usr 
--libexecdir lib 
--sbindir bin 
--auto-features enabled 
--wrap-mode nodownload 
-D b_lto=true 
-D b_pie=true "

export MESON_32_OPTIONS="--prefix /usr 
--libdir lib32
--libexecdir lib32
--sbindir bin 
--auto-features enabled 
--wrap-mode nodownload 
-D b_lto=true 
-D b_pie=true "

