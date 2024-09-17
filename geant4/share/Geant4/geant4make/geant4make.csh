#!/bin/csh

#-----------------------------------------------------------------------
# C shell environment setup script for Geant4 11.2.2
#
# This script will configure your environment to provide a setup which
# can be used to build user applications using the old Geant4 GNUmakefile
# build system, but with a CMake build or install of Geant4.
#
# This script is autogenerated by CMake DO NOT EDIT
#

#-----------------------------------------------------------------------
# Locate directory of self
#
# Self locate script when sourced
# If sourced interactively, we can use $_ as this should be
#
#   source path_to_script_dir/geant4make.csh
#
unset g4sls_sourced_dir
unset geant4make_root

set ARGS=($_)
if ("$ARGS" != "") then
  if ("$ARGS[2]" =~ */geant4make.csh) then
    set g4sls_sourced_dir="`dirname ${ARGS[2]}`"
  endif
endif

if (! $?g4sls_sourced_dir) then
  # Oh great, we were sourced non-interactively. This means that $_
  # won't be set, so we need an external source of information on
  # where the script is located.
  # We obtain this in one of two ways:
  #   1) Current directory:
  #     cd script_dir ; source geant4make.csh
  #
  #   2) Supply the directory as an argument to the script:
  #     source script_dir/geant4make.csh script_dir
  #
  if ( -e geant4make.csh ) then
    set g4sls_sourced_dir="`pwd`"
  else if ( "$1" != "" )  then
    if ( -e ${1}/geant4make.csh ) then
      set g4sls_sourced_dir=${1}
    else
      echo "ERROR ${1} does not contain a Geant4 installation"
    endif
  endif
endif

if (! $?g4sls_sourced_dir) then
  echo "ERROR: geant4make.csh could NOT self-locate Geant4 installation"
  echo "because it was sourced (i.e. embedded) in another script."
  echo "This is due to limitations of (t)csh but can be worked around by providing"
  echo "the directory where geant4make.csh is located"
  echo "to it, either via cd-ing to the directory before sourcing:"
  echo "  cd where_script_is ; source geant4make.csh"
  echo "or by supplying the directory as an argument to the script:"
  echo "  source where_script_is/geant4make.csh where_script_is"
  echo " "
  exit 1
endif

set geant4make_root="`cd ${g4sls_sourced_dir} > /dev/null ; pwd`"


#-----------------------------------------------------------------------
# Cleanup any existing known environment variables
# NB: It won't help with resetting paths!!
#
# - Core Variables
unsetenv  G4INSTALL
unsetenv  G4SYSTEM
unsetenv  G4INCLUDE
unsetenv  G4LIB
unsetenv  G4DEBUG

# - Library build options
unsetenv  G4LIB_BUILD_SHARED
unsetenv  G4LIB_BUILD_STATIC
unsetenv  G4LIB_USE_DLL
unsetenv  G4LIB_USE_GRANULAR
unsetenv  G4MULTITHREADED

# - Optional component build
#
# - CLHEP options
unsetenv  CLHEP_BASE_DIR
unsetenv  CLHEP_INCLUDE_DIR
unsetenv  CLHEP_LIB
unsetenv  CLHEP_LIB_DIR

# - EXPAT options
unsetenv  G4LIB_BUILD_EXPAT
unsetenv  G4LIB_USE_EXPAT

# - ZLIB options
unsetenv  G4LIB_BUILD_ZLIB
unsetenv  G4LIB_USE_ZLIB

# - GDML Options
unsetenv  G4LIB_BUILD_GDML
unsetenv  G4LIB_USE_GDML
unsetenv  XERCESCROOT

# - G3ToG4
unsetenv  G4LIB_BUILD_G3TOG4
unsetenv  G4LIB_USE_G3TOG4

# - USolids/VecGeom
unsetenv USOLIDS_BASE_DIR
unsetenv G4GEOM_USE_USOLIDS
unsetenv G4GEOM_USE_PARTIAL_USOLIDS
unsetenv G4GEOM_USE_UBOX
unsetenv G4GEOM_USE_UCONS
unsetenv G4GEOM_USE_UEXTRUDEDSOLID
unsetenv G4GEOM_USE_UGENERICPOLYCONE
unsetenv G4GEOM_USE_UGENERICTRAP
unsetenv G4GEOM_USE_UORB
unsetenv G4GEOM_USE_UPARABOLOID
unsetenv G4GEOM_USE_UPOLYCONE
unsetenv G4GEOM_USE_UPOLYHEDRA
unsetenv G4GEOM_USE_USPHERE
unsetenv G4GEOM_USE_UTET
unsetenv G4GEOM_USE_UTRAP
unsetenv G4GEOM_USE_UTRD
unsetenv G4GEOM_USE_UTORUS
unsetenv G4GEOM_USE_UTUBS

# - UI Build and Use options
# USE options only for applications.
unsetenv  G4UI_NONE
unsetenv  G4UI_BUILD_QT_SESSION
unsetenv  G4UI_BUILD_WIN32_SESSION
unsetenv  G4UI_BUILD_XAW_SESSION
unsetenv  G4UI_BUILD_XM_SESSION

unsetenv  G4UI_USE_TCSH
unsetenv  G4UI_USE_WIN32
unsetenv  G4UI_USE_XAW
unsetenv  G4UI_USE_XM
unsetenv  G4UI_USE_QT

#- VIS Build and Use options
# Only USE options matter for applications.
unsetenv  G4VIS_NONE

# - OpenInventor driver
unsetenv  G4VIS_BUILD_OIWIN32_DRIVER
unsetenv  G4VIS_USE_OIWIN32
unsetenv  G4VIS_BUILD_OIX_DRIVER
unsetenv  G4VIS_USE_OIX

# - OpenGL drivers
unsetenv  QTHOME
unsetenv  QTLIBPATH
unsetenv  QTLIBS
unsetenv  GLQTLIBS
unsetenv  G4VIS_BUILD_OPENGLQT_DRIVER
unsetenv  G4VIS_USE_OPENGLQT

unsetenv  G4VIS_BUILD_OPENGLWIN32_DRIVER
unsetenv  G4VIS_USE_OPENGLWIN32

unsetenv  G4VIS_BUILD_OPENGLXM_DRIVER
unsetenv  G4VIS_USE_OPENGLXM

unsetenv  G4VIS_BUILD_OPENGLX_DRIVER
unsetenv  G4VIS_USE_OPENGLX

# - Raytracer X11
unsetenv  G4VIS_BUILD_RAYTRACERX_DRIVER
unsetenv  G4VIS_USE_RAYTRACERX


#-----------------------------------------------------------------------
# System description and standard install paths
#
setenv G4SYSTEM Linux-g++
setenv G4INSTALL "$geant4make_root"
setenv G4INCLUDE "`cd $geant4make_root/../../../include/Geant4 > /dev/null ; pwd`"

if ( ! ${?PATH} ) then
  setenv PATH "`cd $geant4make_root/../../../bin > /dev/null ; pwd`"
else
  setenv PATH "`cd $geant4make_root/../../../bin > /dev/null ; pwd`":${PATH}
endif
      
setenv G4LIB "`cd $geant4make_root/../../../lib/Geant4-11.2.2 > /dev/null ; pwd`"

if ( ! ${?LD_LIBRARY_PATH} ) then
  setenv LD_LIBRARY_PATH "`cd $geant4make_root/../../../lib > /dev/null ; pwd`"
else
  setenv LD_LIBRARY_PATH "`cd $geant4make_root/../../../lib > /dev/null ; pwd`":${LD_LIBRARY_PATH}
endif
      

#-----------------------------------------------------------------------
# User's G4WORKDIR
#

if ( ! ${?G4WORKDIR} ) then
  setenv G4WORKDIR $HOME/geant4_workdir
endif


if ( ! ${?PATH} ) then
  setenv PATH ${G4WORKDIR}/bin/${G4SYSTEM}
else
  setenv PATH ${G4WORKDIR}/bin/${G4SYSTEM}:${PATH}
endif
      

#-----------------------------------------------------------------------
# Library build setup
#
setenv G4LIB_BUILD_SHARED 1


setenv G4MULTITHREADED 1

#-----------------------------------------------------------------------
# Resource file paths
# - Datasets
setenv G4NEUTRONHPDATA "`cd $geant4make_root/../data/G4NDL4.7.1 > /dev/null ; pwd`"
setenv G4LEDATA "`cd $geant4make_root/../data/G4EMLOW8.5 > /dev/null ; pwd`"
setenv G4LEVELGAMMADATA "`cd $geant4make_root/../data/PhotonEvaporation5.7 > /dev/null ; pwd`"
setenv G4RADIOACTIVEDATA "`cd $geant4make_root/../data/RadioactiveDecay5.6 > /dev/null ; pwd`"
setenv G4PARTICLEXSDATA "`cd $geant4make_root/../data/G4PARTICLEXS4.0 > /dev/null ; pwd`"
setenv G4PIIDATA "`cd $geant4make_root/../data/G4PII1.3 > /dev/null ; pwd`"
setenv G4REALSURFACEDATA "`cd $geant4make_root/../data/RealSurface2.2 > /dev/null ; pwd`"
setenv G4SAIDXSDATA "`cd $geant4make_root/../data/G4SAIDDATA2.0 > /dev/null ; pwd`"
setenv G4ABLADATA "`cd $geant4make_root/../data/G4ABLA3.3 > /dev/null ; pwd`"
setenv G4INCLDATA "`cd $geant4make_root/../data/G4INCL1.2 > /dev/null ; pwd`"
setenv G4ENSDFSTATEDATA "`cd $geant4make_root/../data/G4ENSDFSTATE2.3 > /dev/null ; pwd`"


# - Fonts for Freetype
# FREETYPE SUPPORT NOT AVAILABLE

#-----------------------------------------------------------------------
# Optional components.
#
#-----------------------------------------------------------------------
# CLHEP setup
#
# USING INTERNAL CLHEP






#-----------------------------------------------------------------------
# EXPAT setup
# USING SYSTEM EXPAT

#-----------------------------------------------------------------------
# ZLIB Setup
#
setenv G4LIB_USE_ZLIB 1


#-----------------------------------------------------------------------
# GDML Setup
#
setenv G4LIB_USE_GDML 1
setenv XERCESCROOT /usr

if ( ! ${?LD_LIBRARY_PATH} ) then
  setenv LD_LIBRARY_PATH /usr/lib/x86_64-linux-gnu
else
  setenv LD_LIBRARY_PATH /usr/lib/x86_64-linux-gnu:${LD_LIBRARY_PATH}
endif
      

#-----------------------------------------------------------------------
# G3ToG4 Setup
#
# NOT BUILT WITH G3TOG4 SUPPORT

#-----------------------------------------------------------------------
# USolids/VecGeom Setup
#
# NOT BUILT WITH USOLIDS SUPPORT



















#-----------------------------------------------------------------------
# USER INTERFACE AND VISUALIZATION MODULES
#
#-----------------------------------------------------------------------
# Terminal UI
setenv G4UI_USE_TCSH 1
# WIN32 TERMINAL UI NOT AVAILABLE ON Linux

#-----------------------------------------------------------------------
# Qt UI/Vis
#





# NOT BUILT WITH QT INTERFACE



#-----------------------------------------------------------------------
# Xm UI/Vis
#
# NOT BUILT WITH XM INTERFACE


#-----------------------------------------------------------------------
# OpenInventor
#
# NOT BUILT WITH INVENTOR SUPPORT

#-----------------------------------------------------------------------
# X11 OpenGL
#
# NOT BUILT WITH OPENGL(X11) SUPPORT

#-----------------------------------------------------------------------
# Win32 OpenGL
#
# NOT BUILT WITH OPENGL(WIN32) SUPPORT

#-----------------------------------------------------------------------
# X11 Raytracer
#
# NOT BUILT WITH RAYTRACER(X11) SUPPORT

#-----------------------------------------------------------------------

# unset local variables
unset g4sls_sourced_dir
unset geant4make_root

