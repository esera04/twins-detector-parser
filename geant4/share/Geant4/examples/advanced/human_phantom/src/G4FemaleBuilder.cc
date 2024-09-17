//
// ********************************************************************
// * License and Disclaimer                                           *
// *                                                                  *
// * The  Geant4 software  is  copyright of the Copyright Holders  of *
// * the Geant4 Collaboration.  It is provided  under  the terms  and *
// * conditions of the Geant4 Software License,  included in the file *
// * LICENSE and available at  http://cern.ch/geant4/license .  These *
// * include a list of copyright holders.                             *
// *                                                                  *
// * Neither the authors of this software system, nor their employing *
// * institutes,nor the agencies providing financial support for this *
// * work  make  any representation or  warranty, express or implied, *
// * regarding  this  software system or assume any liability for its *
// * use.  Please see the license in the file  LICENSE  and URL above *
// * for the full disclaimer and the limitation of liability.         *
// *                                                                  *
// * This  code  implementation is the result of  the  scientific and *
// * technical work of the GEANT4 collaboration.                      *
// * By using,  copying,  modifying or  distributing the software (or *
// * any work based  on the software)  you  agree  to acknowledge its *
// * use  in  resulting  scientific  publications,  and indicate your *
// * acceptance of all terms of the Geant4 Software license.          *
// ********************************************************************
//
// Previous authors: G. Guerrieri, S. Guatelli and M. G. Pia, INFN Genova, Italy
// Authors (since 2007): S. Guatelli,University of Wollongong, Australia
// Contributions by F. Ambroglini INFN Perugia, Italy
//

#include"G4FemaleBuilder.hh"

#include "G4VBodyFactory.hh"
//#include "G4MIRDBodyFactory.hh"
//#include "G4ORNLFemaleBodyFactory.hh"

G4FemaleBuilder::~G4FemaleBuilder()
{ 
  delete fBody;
} 

void G4FemaleBuilder::BuildUterus(const G4String& colourName, G4bool solidVis, G4bool sensitivity )

{
  if (fTrunkVolume == nullptr)
    G4Exception("G4FemaleBuilder::BuildUterus()", "human_phantom0006", FatalException, "The trunk volume is missing !!!!!");

  fBody -> CreateOrgan("Uterus", fTrunkVolume, colourName, solidVis, sensitivity);
}

void G4FemaleBuilder::BuildLeftOvary(const G4String& colourName, G4bool solidVis, G4bool sensitivity )

{
  if (fTrunkVolume == nullptr)
    G4Exception("G4FemaleBuilder::BuildLeftOvary()", "human_phantom0007", FatalException, "The trunk volume is missing !!!!!");

  fBody -> CreateOrgan("LeftOvary", fTrunkVolume, colourName,
 		     solidVis, sensitivity);  
}

void G4FemaleBuilder::BuildRightOvary(const G4String& colourName, G4bool solidVis, G4bool sensitivity )

{
  if (fTrunkVolume == nullptr)
    G4Exception("G4FemaleBuilder::BuildRightOvary()", "human_phantom0008", FatalException, "The trunk volume is missing !!!!!");

  fBody -> CreateOrgan("RightOvary",fTrunkVolume, colourName,
 		     solidVis, sensitivity);  
}

void G4FemaleBuilder::BuildLeftBreast(const G4String& colourName,
				      G4bool solidVis, G4bool sensitivity)
{ 
  if (fMotherVolume == nullptr)
    G4Exception("G4FemaleBuilder::BuildLeftBreast()", "human_phantom0009", FatalException, "The world volume is missing !!!!!");

  fBody -> CreateOrgan("LeftBreast", fMotherVolume, colourName,
		      solidVis, sensitivity);  
}
  
void G4FemaleBuilder::BuildRightBreast(const G4String& colourName, 
				       G4bool solidVis, 
				       G4bool sensitivity)
{
 if (fMotherVolume == nullptr)
   G4Exception("G4FemaleBuilder::BuildRightBreast()", "human_phantom0010", FatalException, "The world volume is missing !!!!!");

  fBody -> CreateOrgan("RightBreast", fMotherVolume, colourName,
		      solidVis, sensitivity);
}
