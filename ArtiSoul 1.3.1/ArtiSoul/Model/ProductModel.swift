//
//  ProductModel.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 15/02/22.
//

import Foundation
import SwiftUI



struct ProductModel: Identifiable, Hashable, Codable{
    
    
    let id = UUID()
//    var video:
    var name : String
    var material : String
    
    var artisanName: String
    var artisanSurname : String
    
    var whatMadeOf: String
    var howToCare: String
    var howToMove: String
    
    var image1: String
    var image2: String
    var image3: String
    var image4: String
    
    var totalProductionTime : String
    
    var title: String
    var profileImage: String
    
//    var isFavorite : Bool
//    let artisanId : UUID
    
//    var tag: [Tags]
}

struct SecondaryProductModel: Identifiable{
    let id = UUID()
//    Generic product infos
    var name : String
    var material : String
//    Artisan infos
    var artisanName: String
    var artisanSurname : String
    var title: String
    var profileImage: String
//    Card details
    var whatMadeOf: String
    var howToCare: String
    var howToMove: String
//    Card photos
    var image1: Image
    var image2: Image
    var image3: Image
//    Production time description
    var totalProductionTime : String
}
