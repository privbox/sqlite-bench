#!/bin/bash -xe
. ../devenv/env.sh
DESTDIR=${DEVENV_PROJ}/sqlite-bench-noinstr CFLAGS="${CFLAGS_NOINSTR}" CC=${CC_MUSL_NOINSTR} ./build-x.sh $@
