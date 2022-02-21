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
        ArtisanModel(idProduct : [UUID()], name : "Claudio", surname : "Pulicati", title: "Ceramista", image: Image("Pulicati"), shortBio : "D"),
        ArtisanModel(idProduct : [UUID()], name : "Elisa", surname : "Castelletta", title: "Ceramista", image: Image("Castelletta"), shortBio : "D"),
        ArtisanModel(idProduct : [UUID()], name : "Silvia", surname : "Raga", title: "Paper Artist", image: Image("Raga"), shortBio : "D")
    ]
   
    func addNewArtisan(name : String, surname : String,title : String, image : Image, shortBio : String){
        let newArtisan = ArtisanModel(idProduct: [UUID()], name: name, surname: surname, title: title, image: image, shortBio: "Short Bio")
            self.artisans.append(newArtisan)
            return
    }
}
