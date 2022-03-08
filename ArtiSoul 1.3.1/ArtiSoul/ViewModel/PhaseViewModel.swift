//
//  PhaseViewModel.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 06/03/22.
//

import Foundation
import SwiftUI

class PhaseViewModel : ObservableObject{
    @Published var phases : [PhaseModel]
    
    init(firstPhase : LocalizedStringKey = "firstPhase",
         secondPhase : LocalizedStringKey = "secondPhase",
         thirdPhase: LocalizedStringKey = "thirdPhase",
         fourthPhase:  LocalizedStringKey = "fourthPhase",
         fifthPhase:LocalizedStringKey = "fifthPhase",
         sixthPhase: LocalizedStringKey = "sixthPhase",
         seventhPhase: LocalizedStringKey = "seventhPhase",
         eighthPhase: LocalizedStringKey = "eighthPhase",
         ninethPhase:LocalizedStringKey = "ninethPhase",
         tenthPhase: LocalizedStringKey = "tenthPhase",
         phase1Name :String = "",
         phase2Name :String = "",
         phase3Name :String = "",
         phase4Name :String = "",
         phase5Name :String = "",
         phase6Name :String = "",
         phase7Name :String = "",
         phase8Name :String = "",
         phase9Name :String = "",
         phase10Name :String = ""){
        
        
        self.phases = [
            PhaseModel(phaseNumber: 1, phaseName: phase1Name, localizedPhaseName: firstPhase),
            PhaseModel(phaseNumber: 2, phaseName: phase2Name, localizedPhaseName: secondPhase),
            PhaseModel(phaseNumber: 3, phaseName: phase3Name, localizedPhaseName: thirdPhase),
            PhaseModel(phaseNumber: 4, phaseName: phase4Name, localizedPhaseName: fourthPhase),
            PhaseModel(phaseNumber: 5, phaseName: phase5Name, localizedPhaseName: fifthPhase),
            PhaseModel(phaseNumber: 6, phaseName: phase6Name, localizedPhaseName: sixthPhase),
            PhaseModel(phaseNumber: 7, phaseName: phase7Name, localizedPhaseName: seventhPhase),
            PhaseModel(phaseNumber: 8, phaseName: phase8Name, localizedPhaseName: eighthPhase),
            PhaseModel(phaseNumber: 9, phaseName: phase9Name, localizedPhaseName: ninethPhase),
            PhaseModel(phaseNumber: 10, phaseName: phase10Name, localizedPhaseName: tenthPhase)]
    }
    
    func updatePhaseName (phaseNumber: Int, newPhaseName: String){
        guard let index = phases.firstIndex(where: {$0.phaseNumber == phaseNumber}) else {return}
        phases[index].phaseName = newPhaseName
    }
    
    func selectPhase (phaseNumber : Int) -> PhaseModel{
        let index = phases.firstIndex(where: {$0.phaseNumber == phaseNumber})
        return self.phases[index!]
    }
}


