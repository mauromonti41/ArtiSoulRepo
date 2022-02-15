//
//  ProductModelView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 15/02/22.
//

import SwiftUI
import Foundation

class Products : ObservableObject{
    
    @Published var product : [Product]? = []

    init(product : [Product]?){
        
        self.product = product
    
    }
    
    func addProduct(_ name: String,_ image1: Image){
        
         _ = Product(name: name, firstImage: image1)
        
    }
}
