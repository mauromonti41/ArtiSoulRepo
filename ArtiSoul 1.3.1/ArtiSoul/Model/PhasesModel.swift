//
//  PhasesModel.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 06/03/22.
//

import Foundation
import SwiftUI



struct PhaseModel : Identifiable{
    
    let id = UUID()
    
    var phaseNumber : Int
    var phaseName : String
    var localizedPhaseName : LocalizedStringKey
    
}
