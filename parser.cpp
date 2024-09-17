#include "G4RunManager.hh"
#include "G4UImanager.hh"
#include "G4VisExecutive.hh"
#include "G4UIExecutive.hh"
#include "G4GDMLParser.hh"
#include "G4LogicalVolume.hh"
#include "G4PhysicalVolumeStore.hh"
#include "G4LogicalVolumeStore.hh"
#include "G4SolidStore.hh"
#include "G4Box.hh"
#include "G4Tubs.hh"
#include "G4Material.hh"
#include "G4NistManager.hh"
#include "G4Element.hh"
#include "G4SystemOfUnits.hh"

#include <iostream>
#include <map>
#include <vector>
#include <fstream>
#include <string>

std::map<std::string, G4LogicalVolume*> ParseGDMLFile(const std::string& gdmlFilePath, G4GDMLParser& parser) {
    std::map<std::string, G4LogicalVolume*> volumes;
    parser.Read(gdmlFilePath);
    
    G4LogicalVolumeStore* logStore = G4LogicalVolumeStore::GetInstance();
    for (auto& lv : *logStore) {
        const std::string& name = lv->GetName();
        std::cout << "Parsed Logical Volume: " << name << std::endl;
        volumes[name] = lv;
    }
    return volumes;
}

void EditFile(std::string filename, int count) {
    std::string fileContent;


    // Step 1: Open the file in read mode and read its content
    std::ifstream inFile("gdml/" + filename);
    if (!inFile) {
        std::cerr << "Unable to open file " << filename << std::endl;
    }

    // Read the entire file content into a string
    std::string line;
    while (std::getline(inFile, line)) {
        fileContent += line + "\n";
    }
    inFile.close();  // Close the file after reading

    // Step 2: Modify the content (for example, appending a new line)
    std::string searchString = "stl_tessellated";
    std::string replaceString = "stl_tessellated_" + std::to_string(count);
    size_t pos = 0;
    while ((pos = fileContent.find(searchString, pos)) != std::string::npos) {
        fileContent.replace(pos, searchString.length(), replaceString);
        pos += replaceString.length(); 
    }

    searchString = "worldSolid";
    replaceString = "worldSolid_" + std::to_string(count);
    pos = 0;
    while ((pos = fileContent.find(searchString, pos)) != std::string::npos) {
        fileContent.replace(pos, searchString.length(), replaceString);
        pos += replaceString.length(); 
    }

    searchString = "wl";
    replaceString = "wl_" + std::to_string(count);
    pos = 0;
    while ((pos = fileContent.find(searchString, pos)) != std::string::npos) {
        fileContent.replace(pos, searchString.length(), replaceString);
        pos += replaceString.length(); 
    }

    // Step 3: Open the file in write mode and write the new content
    std::ofstream outFile("generated/" + filename.replace(filename.length()-5, 5, "_copy.gdml"));
    if (!outFile) {
        std::cerr << "Unable to open file " << filename << std::endl;
    }

    outFile << fileContent;  // Write the modified content to the file
    outFile.close();  // Close the file after writing

    std::cout << "File modified and saved successfully!" << std::endl;
}

int main(int argc, char *argv[]) {

    std::vector<std::string> gdmlFiles;
    if (argc < 1) return 1;

    for (int i = 1; i < argc; i++) {
        gdmlFiles.push_back(argv[i]);
    }

    int count = 0;

    for (const auto& file : gdmlFiles) {
        count++;
        EditFile(file, count);
    }

    G4GDMLParser parser;

    // Container to hold all parsed physical volumes
    G4PhysicalVolumeStore* physVolumeStore;
    G4LogicalVolumeStore* logVolumeStore;
    std::string newFileName;

    // Parse each GDML file
    count = 0;
    for (const auto& file : gdmlFiles) {
        newFileName = file;
        
        count++;

        parser.Read("generated/" + newFileName.replace(newFileName.length()-5, 5,"_copy.gdml"));
        // Optionally, print some information about the parsed file
        std::cout << "Parsed file: " << newFileName << std::endl;
        physVolumeStore = G4PhysicalVolumeStore::GetInstance();
        logVolumeStore = G4LogicalVolumeStore::GetInstance();
    }
    
    G4LogicalVolume* lgv;
    for (const auto& lv : *logVolumeStore)
            {         
                if(lv->GetName().substr(0,2) == "wl")
                {
                    lgv = lv;
                }
            }
    
    lgv->ClearDaughters();
     for (const auto& pv : *physVolumeStore)
            {         
                std::cout << "Final store has " << pv->GetName() << std::endl;
                lgv->AddDaughter(pv);
            }
    
    // Save the combined results into a new GDML file
    std::string outputFilename = "twins.gdml";
    
    parser.Write(outputFilename, lgv , true, "http://cern.ch/service-spi/app/releases/GDML/schema/gdml.xsd");
    std::cout << "Combined GDML file saved as: " << outputFilename << std::endl;


    return 0;
}
