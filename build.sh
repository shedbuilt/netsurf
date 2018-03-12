#!/bin/bash
cp -v "${SHED_CONTRIBDIR}/libparserutils/Makefile.config.override" libparserutils/ &&
cp -v "${SHED_CONTRIBDIR}/netsurf/Makefile.config" netsurf/ &&
make TARGET=framebuffer -j $SHED_NUMJOBS &&
make TARGET=framebuffer DESTDIR="$SHED_FAKEROOT" install
