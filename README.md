# Geant4 GDML Parser

## Prerequisites

Important: Geant4 library is built for Ubuntu 22.04. Additionally, make sure to have installed the `g++` compiler for C++ . To install:
```bash
sudo apt-get update -y
sudo apt-get install g++
```
Input files are in .gdml format and originate from converted .stl files from [stl2gdml](https://github.com/esera04/stl2gdml). 
## Combining .GDML Files
Input files are written into as parameters for executing parser. This is inside the run.sh shellscript. To run, type
```
$ ./run.sh
```
This outputs the ```twins.gdml``` file.
## Author
Edward Serafimescu (eserafimescu@ucla.edu)


## Citation

> Geant4 - A Simulation Toolkit, S. Agostinelli et al., Nucl. Instrum. Meth. A 506 (2003) 250-303
