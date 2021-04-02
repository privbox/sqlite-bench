#!/bin/bash -xe
NPROC=${NPROC:-$(nproc)}
export CFLAGS_EXTRA="${CFLAGS} -DKERNCALL -O2"
export LDFLAGS="${LDFLAGS:-""} -static"

make clean || true
make -j${NPROC}
mkdir -p  $DESTDIR
cp sqlite-bench $DESTDIR/sqlite-bench
