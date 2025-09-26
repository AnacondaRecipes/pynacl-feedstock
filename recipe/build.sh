#!/bin/bash

# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* ./src/libsodium/build-aux

if [[ ${HOST} =~ .*linux.* ]] && [[ ${ARCH} == 32 ]]; then
    export CFLAGS="$CFLAGS -Og"
fi

# Define the environment variable LIBSODIUM_MAKE_ARGS to pass arguments to make and enable parallelization
export LIBSODIUM_MAKE_ARGS="-j${CPU_COUNT}"

export CPPFLAGS="$CPPFLAGS -I${PREFIX}/include"
export SODIUM_INSTALL="system"

$PYTHON -m pip install . -vv --no-deps --no-build-isolation --ignore-installed
