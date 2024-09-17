cmake_minimum_required(VERSION 3.10)
project(Geant4VolumeReplacement)

set(CMAKE_FIND_DEBUG_MODE 1)

# Find the Geant4 package, enable GDML support
find_package(Geant4 REQUIRED gdml)

# Include the Geant4 libraries
include(${Geant4_USE_FILE})

# Add your executable
add_executable(parser parser.cpp)

set(CMAKE_BUILD_TYPE Debug)

# Link the Geant4 libraries to your executable
target_link_libraries(parser ${Geant4_LIBRARIES})