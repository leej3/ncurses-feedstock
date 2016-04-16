#!/bin/bash

mkdir $PREFIX/lib


for USE_WIDEC in "" "--enable-widec"
do
    sh ./configure \
	    --prefix=$PREFIX \
	    --without-debug \
	    --without-ada \
	    --without-manpages \
	    --with-shared \
	    --disable-overwrite \
	    --enable-symlinks \
	    --enable-termcap \
	    --with-termlib \
	    $USE_WIDEC \
	    --with-terminfo-dirs=/usr/share/terminfo
    make
    make install
done
