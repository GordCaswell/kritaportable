#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "KDE4__kdefakes" for configuration "RelWithDebInfo"
set_property(TARGET KDE4__kdefakes APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(KDE4__kdefakes PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/kdefakes.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELWITHDEBINFO ""
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/kdefakes.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS KDE4__kdefakes )
list(APPEND _IMPORT_CHECK_FILES_FOR_KDE4__kdefakes "${_IMPORT_PREFIX}/lib/kdefakes.lib" "${_IMPORT_PREFIX}/bin/kdefakes.dll" )

# Import target "KDE4__kdecore" for configuration "RelWithDebInfo"
set_property(TARGET KDE4__kdecore APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(KDE4__kdecore PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/kdecore.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "KDE4__kdefakes"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELWITHDEBINFO "Qt4::QtCore"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/kdecore.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS KDE4__kdecore )
list(APPEND _IMPORT_CHECK_FILES_FOR_KDE4__kdecore "${_IMPORT_PREFIX}/lib/kdecore.lib" "${_IMPORT_PREFIX}/bin/kdecore.dll" )

# Import target "KDE4__kdeui" for configuration "RelWithDebInfo"
set_property(TARGET KDE4__kdeui APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(KDE4__kdeui PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/kdeui.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "KDE4__kdefakes"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELWITHDEBINFO "KDE4__kdecore;Qt4::QtGui;Qt4::QtSvg"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/kdeui.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS KDE4__kdeui )
list(APPEND _IMPORT_CHECK_FILES_FOR_KDE4__kdeui "${_IMPORT_PREFIX}/lib/kdeui.lib" "${_IMPORT_PREFIX}/bin/kdeui.dll" )

# Import target "KDE4__kntlm" for configuration "RelWithDebInfo"
set_property(TARGET KDE4__kntlm APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(KDE4__kntlm PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/kntlm.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "KDE4__kdecore"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELWITHDEBINFO ""
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/kntlm.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS KDE4__kntlm )
list(APPEND _IMPORT_CHECK_FILES_FOR_KDE4__kntlm "${_IMPORT_PREFIX}/lib/kntlm.lib" "${_IMPORT_PREFIX}/bin/kntlm.dll" )

# Import target "KDE4__kio" for configuration "RelWithDebInfo"
set_property(TARGET KDE4__kio APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(KDE4__kio PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/kio.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "KDE4__solid"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELWITHDEBINFO "KDE4__kdeui;KDE4__kdecore;Qt4::QtNetwork;Qt4::QtXml;Qt4::QtGui"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/kio.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS KDE4__kio )
list(APPEND _IMPORT_CHECK_FILES_FOR_KDE4__kio "${_IMPORT_PREFIX}/lib/kio.lib" "${_IMPORT_PREFIX}/bin/kio.dll" )

# Import target "KDE4__solid" for configuration "RelWithDebInfo"
set_property(TARGET KDE4__solid APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(KDE4__solid PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/solid.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELWITHDEBINFO ""
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/solid.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS KDE4__solid )
list(APPEND _IMPORT_CHECK_FILES_FOR_KDE4__solid "${_IMPORT_PREFIX}/lib/solid.lib" "${_IMPORT_PREFIX}/bin/solid.dll" )

# Import target "KDE4__kfile" for configuration "RelWithDebInfo"
set_property(TARGET KDE4__kfile APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(KDE4__kfile PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/kfile.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "KDE4__solid"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELWITHDEBINFO "KDE4__kio;KDE4__kdeui;KDE4__kdecore;Qt4::QtGui"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/kfile.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS KDE4__kfile )
list(APPEND _IMPORT_CHECK_FILES_FOR_KDE4__kfile "${_IMPORT_PREFIX}/lib/kfile.lib" "${_IMPORT_PREFIX}/bin/kfile.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
