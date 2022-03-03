//
//  ProductModel.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 15/02/22.
//

import Foundation
import SwiftUI



struct ProductModel: Identifiable{
    
    
    var id = UUID()
//    var video:
    var productName : String
    
    var whatMadeOf: String
    var howToCare: String
    var howToMove: String
    
    var image1: Image
    var image2: Image
    var image3: Image
    
    var totalProductionTime : String

    let artisan : ArtisanModel
//    var favorite : Bool = false
//    var tag: [Tags]
}
