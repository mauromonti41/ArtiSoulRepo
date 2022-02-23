//
//  ArtisanViewModel.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 15/02/22.
//

import Foundation
import SwiftUI



class ArtisanViewModel: ObservableObject {
    
    @Published var artisans: [ArtisanModel] = [
        ArtisanModel(name : "Claudio Pulicati", title: "Ceramist", profileImage: Image("Pulicati"), shortBio : "D"),
        ArtisanModel(name : "Elisa Castelletti", title: "Ceramist", profileImage: Image("Castelletta"), shortBio : "D"),
        ArtisanModel(name : "Silvia Raga", title: "Paper Artist", profileImage: Image("Raga"), shortBio : "D")
    ]
   
    func addNewArtisan(name : String,title : String, image : Image, shortBio : String){
        let newArtisan = ArtisanModel( name: name, title: title, profileImage: image, shortBio: "Short Bio")
            self.artisans.append(newArtisan)
            return
    }
    
    func checkArtisan (name: String) -> [ArtisanModel]{
        let filteredArtisan = artisans.filter {$0.name == name}
        return filteredArtisan
    }

}
