#!/bin/bash -xe
. ../devenv/env.sh
DESTDIR=${DEVENV_PROJ}/sqlite-bench-instr CFLAGS="${CFLAGS_INSTR}" CC=${CC_MUSL_INSTR} ./build-x.sh $@
