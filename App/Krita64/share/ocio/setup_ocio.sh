#!/bin/sh
OCIO_ROOT="/data2/cross/mxe/usr/x86_64-w64-mingw32.shared"
OCIO_EXECROOT="/data2/cross/mxe/usr/x86_64-w64-mingw32.shared"

# For OS X
export DYLD_LIBRARY_PATH="${OCIO_EXECROOT}/lib:${DYLD_LIBRARY_PATH}"

# For Linux
export LD_LIBRARY_PATH="${OCIO_EXECROOT}/lib:${LD_LIBRARY_PATH}"

export PATH="${OCIO_EXECROOT}/bin:${PATH}"
export PYTHONPATH="${OCIO_EXECROOT}/:${PYTHONPATH}"
export NUKE_PATH="${OCIO_EXECROOT}/lib/nuke:${NUKE_PATH}"
export NUKE_PATH="${OCIO_ROOT}/share/nuke:${NUKE_PATH}";
