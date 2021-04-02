#!/bin/bash -xe
. ../devenv/env.sh
DESTDIR=${DEVENV_PROJ}/sqlite-bench-fullinstr CFLAGS="${CFLAGS_FULLINSTR}" CC=${CC_MUSL_FULLINSTR} ./build-x.sh $@
