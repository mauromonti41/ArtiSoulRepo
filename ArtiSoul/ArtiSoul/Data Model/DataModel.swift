//
//  DataModel.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 15/02/22.
//

import SwiftUI
import Foundation


struct ProductFirstImage{
    
    var image : Image?
    var howImMade : String?
    
}

struct ProductSecondImage{
    
    var image : Image?
    var howToCare : String?
    
}

struct ProductThirdImage{
    
    var image : Image?
    var howToMove : String?
    
}

struct ProductVideo{
    
}

struct Product : Identifiable{
    
    let id = UUID()
    
    var first : ProductFirstImage
    var second : ProductSecondImage
    var third : ProductThirdImage
    
}
