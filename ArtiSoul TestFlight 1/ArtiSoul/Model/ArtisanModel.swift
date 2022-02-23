//
//  File.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 11/02/22.
//

import Foundation
import SwiftUI




struct ArtisanModel:  Identifiable {
    
    let id = UUID()
//    var idProduct : [UUID]
    var name: String
    var title: String
    var profileImage: Image
    var link: [String] = []
    var shortBio: String
//    var access: Access
}

