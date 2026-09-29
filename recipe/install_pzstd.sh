#!/bin/bash

set -exo pipefail

export CFLAGS="${CFLAGS} -O3"
export CXXFLAGS="${CXXFLAGS} -O3"

make -j"${CPU_COUNT}" -C contrib/pzstd install PREFIX="${PREFIX}"
