# - Try to find the XINE  library
# Once done this will define
#
#  XINE_FOUND - system has the XINE library
#  XINE_VERSION - XINE version
#  XINE_BUGFIX_VERSION - the XINE bugfix version
#  XINE_INCLUDE_DIR - the XINE include directory
#  XINE_LIBRARY - The libraries needed to use XINE
#  XINE_XCB_FOUND - libxine can use XCB for video output

# Copyright (c) 2006,2007 Laurent Montel, <montel@kde.org>
# Copyright (c) 2006, Matthias Kretz, <kretz@kde.org>
#
# Redistribution and use is allowed according to the terms of the BSD license.
# For details see the accompanying COPYING-CMAKE-SCRIPTS file.

# Support XINE_MIN_VERSION for compatibility:
IF(NOT Xine_FIND_VERSION)
  SET(Xine_FIND_VERSION "${XINE_MIN_VERSION}")
ENDIF(NOT Xine_FIND_VERSION)

# the minimum version of xine we require
IF(NOT Xine_FIND_VERSION)
  SET(Xine_FIND_VERSION "1.1.0")
ENDIF(NOT Xine_FIND_VERSION)

FIND_PACKAGE(PkgConfig)
PKG_CHECK_MODULES(PC_LIBXINE QUIET libxine)
SET(XINE_DEFINITIONS ${PC_XINE_CFLAGS_OTHER})

FIND_PATH(XINE_INCLUDE_DIR NAMES xine.h
  HINTS
  ${PC_LIBXINE_INCLUDEDIR}
  ${PC_LIBXINE_INCLUDE_DIRS}
)

FIND_LIBRARY(XINE_LIBRARY NAMES xine
  HINTS
  ${PC_LIBXINE_LIBDIR}
  ${PC_LIBXINE_LIBRARY_DIRS}
)

FIND_PROGRAM(XINECONFIG_EXECUTABLE NAMES xine-config
  HINTS
  ${PC_LIBXINE_PREFIX}/bin
)

# Get the version number from xine.h and store it in the cache:
IF(XINE_INCLUDE_DIR  AND NOT  XINE_VERSION)
  IF(EXISTS ${XINE_INCLUDE_DIR}/xine/version.h) # xine 1.2.0+
    SET(XINE_VERSION_FILE ${XINE_INCLUDE_DIR}/xine/version.h)
  ELSE(EXISTS ${XINE_INCLUDE_DIR}/xine/version.h)
    SET(XINE_VERSION_FILE ${XINE_INCLUDE_DIR}/xine.h)
  ENDIF(EXISTS ${XINE_INCLUDE_DIR}/xine/version.h)

  FILE(READ ${XINE_VERSION_FILE} XINE_VERSION_CONTENT)
  STRING(REGEX MATCH "#define *XINE_MAJOR_VERSION *([0-9]+)"  _dummy "${XINE_VERSION_CONTENT}")
  SET(XINE_VERSION_MAJOR "${CMAKE_MATCH_1}")

  STRING(REGEX MATCH "#define *XINE_MINOR_VERSION *([0-9]+)"  _dummy "${XINE_VERSION_CONTENT}")
  SET(XINE_VERSION_MINOR "${CMAKE_MATCH_1}")

  STRING(REGEX MATCH "#define *XINE_SUB_VERSION *([0-9]+)"  _dummy "${XINE_VERSION_CONTENT}")
  SET(XINE_VERSION_PATCH "${CMAKE_MATCH_1}")

  SET(XINE_VERSION "${XINE_VERSION_MAJOR}.${XINE_VERSION_MINOR}.${XINE_VERSION_PATCH}" CACHE STRING "Version number of Xine" FORCE)

  IF("${XINE_VERSION}" VERSION_GREATER "${Xine_FIND_VERSION}")
    STRING(REGEX REPLACE "[0-9]\\.[0-9]\\." "" XINE_BUGFIX_VERSION ${XINE_VERSION})
  ENDIF("${XINE_VERSION}" VERSION_GREATER "${Xine_FIND_VERSION}")
ENDIF(XINE_INCLUDE_DIR  AND NOT  XINE_VERSION)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(Xine  REQUIRED_VARS XINE_INCLUDE_DIR XINE_LIBRARY XINECONFIG_EXECUTABLE
					VERSION_VAR XINE_VERSION)

MARK_AS_ADVANCED(XINE_INCLUDE_DIR XINE_LIBRARY XINECONFIG_EXECUTABLE)
