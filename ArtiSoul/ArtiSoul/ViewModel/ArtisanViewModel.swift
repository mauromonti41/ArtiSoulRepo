//
//  ArtisanViewModel.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 15/02/22.
//

import Foundation


class ArtisanViewModel: ObservableObject {
    
    @Published var artisans: [ArtisanInfo] = [
        ArtisanInfo(idProduct : [UUID()], name : "Claudio", surname : "Pulicati", titol: "Ceramista", imageName : "a", shortBio : "D"),
        ArtisanInfo(idProduct : [UUID()], name : "Elisa", surname : "Castelletta", titol: "Ceramista", imageName : "C", shortBio : "D"),
        ArtisanInfo(idProduct : [UUID()], name : "Silva", surname : "Raga", titol: "Paper Artist", imageName : "C", shortBio : "D")
    ]
   
    func addNewArtisan(name : String, surname : String,titol : String, imageName : String, shortBio : String){
        let newArtisan = ArtisanInfo(idProduct: [UUID()], name: name, surname: surname, titol: titol, imageName: "F", shortBio: "Short Bio")
            self.artisans.append(newArtisan)
            return
    }
}
