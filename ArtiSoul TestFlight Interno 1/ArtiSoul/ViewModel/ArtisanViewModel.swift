//
//  ArtisanViewModel.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 15/02/22.
//

import Foundation
import SwiftUI



class ArtisanViewModel: ObservableObject {
    
    @Published var artisans: [ArtisanModel] = []

   
    func addNewArtisan(name : String,surname : String, title : String, image : Image, link : [Links], access: AccessModel){
        let newArtisan = ArtisanModel(name: name, surname: surname, title: title, profileImage: image, link: link, access: access)
            self.artisans.append(newArtisan)
            return
    }
    
    func checkArtisan (name: String) -> [ArtisanModel]{
        let filteredArtisan = artisans.filter {$0.name == name}
        return filteredArtisan
    }

}
