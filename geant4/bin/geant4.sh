#!/bin/sh

#-----------------------------------------------------------------------
# Bourne shell environment setup script for Geant4 11.2.2
#
# This script will configure your environment so that any Geant4 supplied
# tools, libraries and data are available in your PATH, library paths etc.
# Data libraries will only be setup if they were installed as part of the
# Geant4 installation.
#
# Source this script to perform the setup.
#
# This script is autogenerated by CMake DO NOT EDIT
#

#-----------------------------------------------------------------------
# Locate directory of self
#
# Self locate script when sourced
g4sls_sourced_dir=$(dirname ${BASH_SOURCE[0]:-$0})

if [  "${g4sls_sourced_dir}" = "." ]; then
  if [ ! -f geant4.sh ]; then
    # Not bash, zsh or sh so rely on sourcing from correct location
    echo 'ERROR: geant4.sh could NOT self-locate Geant4 installation'
    echo 'This is most likely because you are using ksh, dash  or similar'
    echo 'To fix this issue, cd to the directory containing this script'
    echo 'and source it in that directory.'
    unset g4sls_sourced_dir
    return 1
  fi
fi
geant4_envbindir=$(cd $g4sls_sourced_dir > /dev/null ; pwd)
      

#-----------------------------------------------------------------------
# Setup Geant4 binary and library paths...
#

if [ -z "${PATH-}" ] ; then
  export PATH="$geant4_envbindir"
else
  export PATH="$geant4_envbindir":${PATH}
fi


if [ -z "${LD_LIBRARY_PATH-}" ] ; then
  export LD_LIBRARY_PATH="`cd $geant4_envbindir/../lib > /dev/null ; pwd`"
else
  export LD_LIBRARY_PATH="`cd $geant4_envbindir/../lib > /dev/null ; pwd`":${LD_LIBRARY_PATH}
fi


#-----------------------------------------------------------------------
# Setup Third-party binary and library paths...
# - CLHEP
# - Builtin CLHEP used

# - XercesC

if [ -z "${LD_LIBRARY_PATH-}" ] ; then
  export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu
else
  export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/lib/x86_64-linux-gnu
fi


#-----------------------------------------------------------------------
# Resource file paths
# - Datasets
export GEANT4_DATA_DIR="`cd $geant4_envbindir/../share/Geant4/data > /dev/null ; pwd`"

# - Variables for individual datasets
# Uncomment the line and edit the path to the dataset if installed in not standard location.

# export G4NEUTRONHPDATA=$GEANT4_DATA_DIR/G4NDL4.7.1
# export G4LEDATA=$GEANT4_DATA_DIR/G4EMLOW8.5
# export G4LEVELGAMMADATA=$GEANT4_DATA_DIR/PhotonEvaporation5.7
# export G4RADIOACTIVEDATA=$GEANT4_DATA_DIR/RadioactiveDecay5.6
# export G4PARTICLEXSDATA=$GEANT4_DATA_DIR/G4PARTICLEXS4.0
# export G4PIIDATA=$GEANT4_DATA_DIR/G4PII1.3
# export G4REALSURFACEDATA=$GEANT4_DATA_DIR/RealSurface2.2
# export G4SAIDXSDATA=$GEANT4_DATA_DIR/G4SAIDDATA2.0
# export G4ABLADATA=$GEANT4_DATA_DIR/G4ABLA3.3
# export G4INCLDATA=$GEANT4_DATA_DIR/G4INCL1.2
# export G4ENSDFSTATEDATA=$GEANT4_DATA_DIR/G4ENSDFSTATE2.3


# - Fonts for Freetype
# FREETYPE SUPPORT NOT AVAILABLE

#----------------------------------------------------------------------

# unset local variables
unset g4sls_sourced_dir
unset geant4_envbindir
