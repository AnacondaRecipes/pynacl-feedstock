#!/bin/bash

# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* ./src/libsodium/build-aux

if [[ ${HOST} =~ .*linux.* ]] && [[ ${ARCH} == 32 ]]; then
    export CFLAGS="$CFLAGS -Og"
fi

# Define the environment variable LIBSODIUM_MAKE_ARGS to pass arguments to make and enable parallelization
export LIBSODIUM_MAKE_ARGS="-j4"

export CPPFLAGS="$CPPFLAGS -I${PREFIX}/include"
export SODIUM_INSTALL="system"

python -m pip install . --no-deps --ignore-installed
