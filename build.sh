#!/bin/bash
cp -v "${SHED_PKG_CONTRIB_DIR}/libparserutils/Makefile.config.override" libparserutils/ &&
cp -v "${SHED_PKG_CONTRIB_DIR}/netsurf/Makefile.config" netsurf/ &&
make TARGET=framebuffer PREFIX=/usr/local -j $SHED_NUM_JOBS &&
make TARGET=framebuffer PREFIX=/usr/local DESTDIR="$SHED_FAKE_ROOT" install
