cmake_minimum_required(VERSION 3.10)
project(Geant4Simulation)

set(CMAKE_FIND_DEBUG_MODE 1)

# Find the Geant4 package, enable GDML support
find_package(Geant4 REQUIRED gdml ui_all vis_all)

# Include the Geant4 libraries
include(${Geant4_USE_FILE})
include_directories(${PROJECT_SOURCE_DIR}/include)

file(GLOB sources ${PROJECT_SOURCE_DIR}/src/*.cpp)
file(GLOB headers ${PROJECT_SOURCE_DIR}/include/*.hh)


# Add your executable
add_executable(test test.cpp ${sources} ${headers})

set(CMAKE_BUILD_TYPE Debug)

# Link the Geant4 libraries to your executable
target_link_libraries(test ${Geant4_LIBRARIES})