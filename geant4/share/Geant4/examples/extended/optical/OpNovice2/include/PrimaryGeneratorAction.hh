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
/// \file optical/OpNovice2/include/PrimaryGeneratorAction.hh
/// \brief Definition of the PrimaryGeneratorAction class
//
//
//
//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

#ifndef PrimaryGeneratorAction_h
#define PrimaryGeneratorAction_h 1

#include "globals.hh"
#include "G4ParticleGun.hh"
#include "G4VUserPrimaryGeneratorAction.hh"

class G4Event;
class PrimaryGeneratorMessenger;

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

class PrimaryGeneratorAction : public G4VUserPrimaryGeneratorAction
{
 public:
  PrimaryGeneratorAction();
  ~PrimaryGeneratorAction() override;

  void GeneratePrimaries(G4Event*) override;

  G4ParticleGun* GetParticleGun() { return fParticleGun; };

  void SetOptPhotonPolar();
  void SetOptPhotonPolar(G4double);
  void SetRandomDirection(G4bool val = true);
  G4bool GetPolarized() { return fPolarized; };
  G4double GetPolarization() { return fPolarization; }

 private:
  G4ParticleGun* fParticleGun = nullptr;
  PrimaryGeneratorMessenger* fGunMessenger = nullptr;
  G4bool fRandomDirection = false;
  G4bool fPolarized = false;
  G4double fPolarization = 0.;
};

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

#endif /*PrimaryGeneratorAction_h*/