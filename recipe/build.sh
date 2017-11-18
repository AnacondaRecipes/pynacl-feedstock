#!/bin/bash
if [[ ${HOST} =~ .*linux.* ]] && [[ ${ARCH} == 32 ]]; then
    export CFLAGS="$CFLAGS -Og"
fi
python setup.py install --single-version-externally-managed --record record.txt
