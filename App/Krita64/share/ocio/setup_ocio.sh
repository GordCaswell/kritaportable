#!/bin/sh
OCIO_ROOT="/dev/i"
OCIO_EXECROOT="/dev/i"

# For OS X
export DYLD_LIBRARY_PATH="${OCIO_EXECROOT}/lib:${DYLD_LIBRARY_PATH}"

# For Linux
export LD_LIBRARY_PATH="${OCIO_EXECROOT}/lib:${LD_LIBRARY_PATH}"

export PATH="${OCIO_EXECROOT}/bin:${PATH}"
export PYTHONPATH="${OCIO_EXECROOT}/:${PYTHONPATH}"
export NUKE_PATH="${OCIO_EXECROOT}/lib/nuke:${NUKE_PATH}"
export NUKE_PATH="${OCIO_ROOT}/share/nuke:${NUKE_PATH}";
