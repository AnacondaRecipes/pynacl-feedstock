#!/bin/bash
if [[ ${HOST} =~ .*linux.* ]] && [[ ${ARCH} == 32 ]]; then
    export CFLAGS="$CFLAGS -Og"
fi
export CPPFLAGS="$CPPFLAGS -I${PREFIX}/include"
export SODIUM_INSTALL="system"
python -m pip install . --no-deps --ignore-installed
