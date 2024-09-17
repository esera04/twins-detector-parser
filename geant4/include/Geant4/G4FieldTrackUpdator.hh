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
// G4FieldTrackUpdator
//
// Class description:
//
// Utility class to create and update a G4FieldTrack object.

// Author: M.Asai, 28 April 2006
// --------------------------------------------------------------------
#ifndef G4FieldTrackUpdator_hh
#define G4FieldTrackUpdator_hh 1

class G4FieldTrack;
class G4Track;

class G4FieldTrackUpdator
{
  public:

    static G4FieldTrack* CreateFieldTrack(const G4Track*);
    static void Update(G4FieldTrack*, const G4Track*);

  private:

    G4FieldTrackUpdator() = default;
   ~G4FieldTrackUpdator() = default;
};

#endif
