# This file is generated by the Geant4 CMake buildsystem and should not be editted
#
# This file stores paths and settings to external libraries found and used by this
# install of Geant4 when it was built.

macro(geant4_set_and_check_package_variable _name _value _type _docstring)
  if(DEFINED ${_name})
    if(NOT ("${${_name}}" STREQUAL "${_value}"))
      message(WARNING "Value of '${_name}' is already set and does not match value set at Geant4 build-time")
    endif()
  else()
    set(${_name} ${_value} CACHE ${_type} "${_docstring}")
  endif()
endmacro()


# EXPAT Build Time Settings
geant4_set_and_check_package_variable(EXPAT_INCLUDE_DIR "/usr/include" PATH "Path to a file.")
geant4_set_and_check_package_variable(EXPAT_LIBRARY "/usr/lib/x86_64-linux-gnu/libexpat.so" PATH "no documentation, not a cache value")
geant4_set_and_check_package_variable(EXPAT_LIBRARY_RELEASE "/usr/lib/x86_64-linux-gnu/libexpat.so" FILEPATH "Path to a library.")

# TBB Build Time Settings

# XercesC Build Time Settings
geant4_set_and_check_package_variable(XercesC_INCLUDE_DIR "/usr/include" PATH "Xerces-C++ include directory")
geant4_set_and_check_package_variable(XercesC_LIBRARY_RELEASE "/usr/lib/x86_64-linux-gnu/libxerces-c.so" FILEPATH "Xerces-C++ libraries (release)")