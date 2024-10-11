#!/usr/bin/bash

source /usr/local/bin/geant4.sh
mkdir -p build
cd build
if cmake ..; then
    make
    mv test ..
    cd ..
    ./test
             
else 
    echo 
    echo "build failed... exiting"
fi