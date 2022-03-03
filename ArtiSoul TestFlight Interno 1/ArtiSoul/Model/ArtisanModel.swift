//
//  File.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 11/02/22.
//

import Foundation
import SwiftUI

struct Links : Identifiable{
    let id = UUID()
    var site : String
    var URL : String
}


struct ArtisanModel:  Identifiable{
    
    let id = UUID()
//    var idProduct : [UUID]
    var name: String
    var surname : String
    var title: String
    var profileImage: Image
    var link: [Links]
    var access: AccessModel
    
}

