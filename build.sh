#!/bin/bash -xeu
. ../devenv/env.sh
./build-noinstr.sh
./build-instr.sh
./build-fullinstr.sh