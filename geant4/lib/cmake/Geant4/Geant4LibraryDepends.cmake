# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.8)
   message(FATAL_ERROR "CMake >= 2.8.0 required")
endif()
if(CMAKE_VERSION VERSION_LESS "2.8.3")
   message(FATAL_ERROR "CMake >= 2.8.3 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.8.3...3.25)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_cmake_targets_defined "")
set(_cmake_targets_not_defined "")
set(_cmake_expected_targets "")
foreach(_cmake_expected_target IN ITEMS Geant4::G4clhep Geant4::G4zlib Geant4::G4tools Geant4::G4ptl Geant4::G4analysis Geant4::G4digits_hits Geant4::G4error_propagation Geant4::G4event Geant4::G4geometry Geant4::G4global Geant4::G4graphics_reps Geant4::G4intercoms Geant4::G4interfaces Geant4::G4materials Geant4::G4parmodels Geant4::G4particles Geant4::G4geomtext Geant4::G4mctruth Geant4::G4gdml Geant4::G4physicslists Geant4::G4processes Geant4::G4readout Geant4::G4run Geant4::G4track Geant4::G4tracking Geant4::G4FR Geant4::G4visHepRep Geant4::G4RayTracer Geant4::G4Tree Geant4::G4VRML Geant4::G4GMocren Geant4::G4vis_management Geant4::G4modeling Geant4::G4ToolsSG)
  list(APPEND _cmake_expected_targets "${_cmake_expected_target}")
  if(TARGET "${_cmake_expected_target}")
    list(APPEND _cmake_targets_defined "${_cmake_expected_target}")
  else()
    list(APPEND _cmake_targets_not_defined "${_cmake_expected_target}")
  endif()
endforeach()
unset(_cmake_expected_target)
if(_cmake_targets_defined STREQUAL _cmake_expected_targets)
  unset(_cmake_targets_defined)
  unset(_cmake_targets_not_defined)
  unset(_cmake_expected_targets)
  unset(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT _cmake_targets_defined STREQUAL "")
  string(REPLACE ";" ", " _cmake_targets_defined_text "${_cmake_targets_defined}")
  string(REPLACE ";" ", " _cmake_targets_not_defined_text "${_cmake_targets_not_defined}")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_cmake_targets_defined_text}\nTargets not yet defined: ${_cmake_targets_not_defined_text}\n")
endif()
unset(_cmake_targets_defined)
unset(_cmake_targets_not_defined)
unset(_cmake_expected_targets)


# Compute the installation prefix relative to this file.
get_filename_component(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
if(_IMPORT_PREFIX STREQUAL "/")
  set(_IMPORT_PREFIX "")
endif()

# Create imported target Geant4::G4clhep
add_library(Geant4::G4clhep SHARED IMPORTED)

set_target_properties(Geant4::G4clhep PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
)

# Create imported target Geant4::G4zlib
add_library(Geant4::G4zlib SHARED IMPORTED)

set_target_properties(Geant4::G4zlib PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
)

# Create imported target Geant4::G4tools
add_library(Geant4::G4tools INTERFACE IMPORTED)

set_target_properties(Geant4::G4tools PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
)

# Create imported target Geant4::G4ptl
add_library(Geant4::G4ptl INTERFACE IMPORTED)

set_target_properties(Geant4::G4ptl PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "PTL::ptl-shared"
)

# Create imported target Geant4::G4analysis
add_library(Geant4::G4analysis SHARED IMPORTED)

set_target_properties(Geant4::G4analysis PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "EXPAT::EXPAT;Geant4::G4global;Geant4::G4intercoms;Geant4::G4tools;Geant4::G4zlib"
)

# Create imported target Geant4::G4digits_hits
add_library(Geant4::G4digits_hits SHARED IMPORTED)

set_target_properties(Geant4::G4digits_hits PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4geometry;Geant4::G4global;Geant4::G4intercoms;Geant4::G4particles;Geant4::G4track"
)

# Create imported target Geant4::G4error_propagation
add_library(Geant4::G4error_propagation SHARED IMPORTED)

set_target_properties(Geant4::G4error_propagation PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4geometry;Geant4::G4global;Geant4::G4intercoms;Geant4::G4materials;Geant4::G4particles;Geant4::G4processes;Geant4::G4run;Geant4::G4track;Geant4::G4tracking"
)

# Create imported target Geant4::G4event
add_library(Geant4::G4event SHARED IMPORTED)

set_target_properties(Geant4::G4event PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4digits_hits;Geant4::G4geometry;Geant4::G4global;Geant4::G4intercoms;Geant4::G4particles;Geant4::G4track;Geant4::G4tracking"
)

# Create imported target Geant4::G4geometry
add_library(Geant4::G4geometry SHARED IMPORTED)

set_target_properties(Geant4::G4geometry PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4global;Geant4::G4graphics_reps;Geant4::G4intercoms"
)

# Create imported target Geant4::G4global
add_library(Geant4::G4global SHARED IMPORTED)

set_target_properties(Geant4::G4global PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4clhep;Geant4::G4ptl"
)

# Create imported target Geant4::G4graphics_reps
add_library(Geant4::G4graphics_reps SHARED IMPORTED)

set_target_properties(Geant4::G4graphics_reps PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4global"
)

# Create imported target Geant4::G4intercoms
add_library(Geant4::G4intercoms SHARED IMPORTED)

set_target_properties(Geant4::G4intercoms PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4global"
)

# Create imported target Geant4::G4interfaces
add_library(Geant4::G4interfaces SHARED IMPORTED)

set_target_properties(Geant4::G4interfaces PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4global;Geant4::G4intercoms"
)

# Create imported target Geant4::G4materials
add_library(Geant4::G4materials SHARED IMPORTED)

set_target_properties(Geant4::G4materials PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4global;Geant4::G4intercoms"
)

# Create imported target Geant4::G4parmodels
add_library(Geant4::G4parmodels SHARED IMPORTED)

set_target_properties(Geant4::G4parmodels PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4digits_hits;Geant4::G4geometry;Geant4::G4global;Geant4::G4intercoms;Geant4::G4materials;Geant4::G4particles;Geant4::G4processes;Geant4::G4track"
)

# Create imported target Geant4::G4particles
add_library(Geant4::G4particles SHARED IMPORTED)

set_target_properties(Geant4::G4particles PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4global;Geant4::G4intercoms"
)

# Create imported target Geant4::G4geomtext
add_library(Geant4::G4geomtext SHARED IMPORTED)

set_target_properties(Geant4::G4geomtext PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4geometry;Geant4::G4global;Geant4::G4intercoms;Geant4::G4materials"
)

# Create imported target Geant4::G4mctruth
add_library(Geant4::G4mctruth SHARED IMPORTED)

set_target_properties(Geant4::G4mctruth PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4digits_hits;Geant4::G4event;Geant4::G4global;Geant4::G4intercoms;Geant4::G4run"
)

# Create imported target Geant4::G4gdml
add_library(Geant4::G4gdml SHARED IMPORTED)

set_target_properties(Geant4::G4gdml PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4geometry;Geant4::G4global;Geant4::G4intercoms;Geant4::G4materials;XercesC::XercesC"
)

# Create imported target Geant4::G4physicslists
add_library(Geant4::G4physicslists SHARED IMPORTED)

set_target_properties(Geant4::G4physicslists PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4geometry;Geant4::G4global;Geant4::G4intercoms;Geant4::G4materials;Geant4::G4particles;Geant4::G4processes;Geant4::G4run"
)

# Create imported target Geant4::G4processes
add_library(Geant4::G4processes SHARED IMPORTED)

set_target_properties(Geant4::G4processes PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "EXPAT::EXPAT;Geant4::G4digits_hits;Geant4::G4geometry;Geant4::G4global;Geant4::G4intercoms;Geant4::G4materials;Geant4::G4particles;Geant4::G4track"
)

# Create imported target Geant4::G4readout
add_library(Geant4::G4readout SHARED IMPORTED)

set_target_properties(Geant4::G4readout PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4global;Geant4::G4intercoms"
)

# Create imported target Geant4::G4run
add_library(Geant4::G4run SHARED IMPORTED)

set_target_properties(Geant4::G4run PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4event;Geant4::G4global;Geant4::G4particles;Geant4::G4processes;Geant4::G4tracking"
)

# Create imported target Geant4::G4track
add_library(Geant4::G4track SHARED IMPORTED)

set_target_properties(Geant4::G4track PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4geometry;Geant4::G4global;Geant4::G4materials;Geant4::G4particles"
)

# Create imported target Geant4::G4tracking
add_library(Geant4::G4tracking SHARED IMPORTED)

set_target_properties(Geant4::G4tracking PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4geometry;Geant4::G4global;Geant4::G4intercoms;Geant4::G4particles;Geant4::G4processes;Geant4::G4track"
)

# Create imported target Geant4::G4FR
add_library(Geant4::G4FR SHARED IMPORTED)

set_target_properties(Geant4::G4FR PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4vis_management"
)

# Create imported target Geant4::G4visHepRep
add_library(Geant4::G4visHepRep SHARED IMPORTED)

set_target_properties(Geant4::G4visHepRep PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4global;Geant4::G4vis_management"
)

# Create imported target Geant4::G4RayTracer
add_library(Geant4::G4RayTracer SHARED IMPORTED)

set_target_properties(Geant4::G4RayTracer PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4vis_management"
)

# Create imported target Geant4::G4Tree
add_library(Geant4::G4Tree SHARED IMPORTED)

set_target_properties(Geant4::G4Tree PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4vis_management"
)

# Create imported target Geant4::G4VRML
add_library(Geant4::G4VRML SHARED IMPORTED)

set_target_properties(Geant4::G4VRML PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4vis_management"
)

# Create imported target Geant4::G4GMocren
add_library(Geant4::G4GMocren SHARED IMPORTED)

set_target_properties(Geant4::G4GMocren PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4vis_management"
)

# Create imported target Geant4::G4vis_management
add_library(Geant4::G4vis_management SHARED IMPORTED)

set_target_properties(Geant4::G4vis_management PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4digits_hits;Geant4::G4global;Geant4::G4graphics_reps;Geant4::G4intercoms;Geant4::G4modeling;Geant4::G4tools"
)

# Create imported target Geant4::G4modeling
add_library(Geant4::G4modeling SHARED IMPORTED)

set_target_properties(Geant4::G4modeling PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4digits_hits;Geant4::G4geometry;Geant4::G4global;Geant4::G4graphics_reps;Geant4::G4intercoms;Geant4::G4tracking"
)

# Create imported target Geant4::G4ToolsSG
add_library(Geant4::G4ToolsSG SHARED IMPORTED)

set_target_properties(Geant4::G4ToolsSG PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "G4LIB_BUILD_DLL"
  INTERFACE_COMPILE_FEATURES "cxx_std_17"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/Geant4"
  INTERFACE_LINK_LIBRARIES "Geant4::G4vis_management"
)

if(CMAKE_VERSION VERSION_LESS 3.0.0)
  message(FATAL_ERROR "This file relies on consumers using CMake 3.0.0 or greater.")
endif()

# Load information for each installed configuration.
file(GLOB _cmake_config_files "${CMAKE_CURRENT_LIST_DIR}/Geant4LibraryDepends-*.cmake")
foreach(_cmake_config_file IN LISTS _cmake_config_files)
  include("${_cmake_config_file}")
endforeach()
unset(_cmake_config_file)
unset(_cmake_config_files)

# Cleanup temporary variables.
set(_IMPORT_PREFIX)

# Loop over all imported files and verify that they actually exist
foreach(_cmake_target IN LISTS _cmake_import_check_targets)
  foreach(_cmake_file IN LISTS "_cmake_import_check_files_for_${_cmake_target}")
    if(NOT EXISTS "${_cmake_file}")
      message(FATAL_ERROR "The imported target \"${_cmake_target}\" references the file
   \"${_cmake_file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
    endif()
  endforeach()
  unset(_cmake_file)
  unset("_cmake_import_check_files_for_${_cmake_target}")
endforeach()
unset(_cmake_target)
unset(_cmake_import_check_targets)

# Make sure the targets which have been exported in some other
# export set exist.
unset(${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets)
foreach(_target "PTL::ptl-shared" )
  if(NOT TARGET "${_target}" )
    set(${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets "${${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets} ${_target}")
  endif()
endforeach()

if(DEFINED ${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets)
  if(CMAKE_FIND_PACKAGE_NAME)
    set( ${CMAKE_FIND_PACKAGE_NAME}_FOUND FALSE)
    set( ${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE "The following imported targets are referenced, but are missing: ${${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets}")
  else()
    message(FATAL_ERROR "The following imported targets are referenced, but are missing: ${${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets}")
  endif()
endif()
unset(${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets)

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)