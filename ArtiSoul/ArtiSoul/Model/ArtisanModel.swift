//
//  File.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 11/02/22.
//

import Foundation




struct ArtisanInfo: Identifiable {
    
    let id = UUID()
    var idProduct : [UUID]
    var name: String
    var surname: String
    var titol: String
    var imageName: String
    var link: [String] = []
    var shortBio: String
//    var access: Access
}

