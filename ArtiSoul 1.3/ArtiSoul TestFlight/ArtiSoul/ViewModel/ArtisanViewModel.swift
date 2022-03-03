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
        ArtisanModel(name : "Claudio",surname: "Pulicati", title: "Ceramist", profileImage: Image("Pulicati"),link: [Links(site: "instagram" , URL: "https://www.instagram.com/claudiopulicati/"),Links(site: "shop", URL: "https://claudiopulicati.com/collections/all"),Links(site: "website", URL: "https://claudiopulicati.com")], access: AccessModel(email: "default", password: "default")),
        ArtisanModel(name : "Elisa",surname: "Castelletti", title: "Ceramist", profileImage: Image("Castelletta"), link: [Links(site: "instagram" , URL: "https://www.instagram.com/claudiopulicati/"),Links(site: "shop", URL: "https://claudiopulicati.com/collections/all"),Links(site: "website", URL: "https://claudiopulicati.com")],access: AccessModel(email: "default", password: "default")),
        ArtisanModel(name : "Silvia",surname: "Raga", title: "Paper Artist", profileImage: Image("Raga"),link: [Links(site: "instagram" , URL: "https://www.instagram.com/claudiopulicati/"),Links(site: "shop", URL: "https://claudiopulicati.com/collections/all"),Links(site: "website", URL: "https://claudiopulicati.com")],access: AccessModel(email: "default", password: "default"))
    ]
   
    func addNewArtisan(_ artisan : ArtisanModel){
        
            self.artisans.append(artisan)
    }
    
    func checkArtisan (name: String) -> ArtisanModel{
        let filteredArtisan = artisans.filter{$0.name == name}
        return filteredArtisan[0]
    }

}
