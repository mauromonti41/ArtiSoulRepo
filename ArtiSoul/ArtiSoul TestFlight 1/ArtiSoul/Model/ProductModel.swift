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
    var artisanName: String
    
    var whatMadeOf: String
    var howToCare: String
    var howToMove: String
    
    var image1: String
    var image2: String
    var image3: String
    
    var totalProductionTime : String
    
    var title: String
    var profileImage: String
//    let artisanId : UUID
//    var favorite : Bool = false
//    var tag: [Tags]
}
