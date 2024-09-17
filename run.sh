#!/usr/bin/bash

source geant4/bin/geant4.sh
mkdir -p generated build
cd build
if cmake ..; then
    make
    mv parser ..
    cd ..
    rm twins.gdml
    ./parser arms.gdml \
             bottom.gdml \
             copper_core_left.gdml \
             copper_core_right.gdml \
             copper_shielding.gdml \
             dewer_left.gdml \
             dewer_right.gdml \
             lead_box_lower.gdml \
             lead_box_upper.gdml \
             lead_lid.gdml
else 
    echo 
    echo "build failed... exiting"
fi