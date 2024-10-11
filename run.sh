#!/usr/bin/bash

source /usr/local/bin/geant4.sh
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
             lead_lid.gdml \
             lead_box_lower.gdml \
             lead_box_upper.gdml \
             dewer_right.gdml
             
else 
    echo 
    echo "build failed... exiting"
fi