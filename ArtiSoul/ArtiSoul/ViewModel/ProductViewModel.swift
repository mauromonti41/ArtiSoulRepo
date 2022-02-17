//
//  ProductViewModel.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 15/02/22.
//

import Foundation
import SwiftUI

class ProductViewModel: ObservableObject {
    
    @Published var products: [Productinfo] = [
        Productinfo(name: "Mug", artisanId: UUID(), image: [Image("Mug1"),Image("Mug2"),Image("Mug3"),Image("Mug4")], tag: [.all,.Clay]),
        Productinfo(name: "Anemone", artisanId: UUID(), image: [Image("Anemone1"),Image("Anemone2"), Image("Anemone3"),Image("Anemone4")], tag: [.all,.Paper]),
        Productinfo(name: "Single flower jar", artisanId: UUID(), descrizione: [], image: [Image("SingleFlowerJar_1"),Image("SingleFlowerJar_2"),Image("SingleFlowerJar_3"),Image("SingleFlowerJar_4")], tag: [.all,.Clay])
    ]
    

    func addNewProduct(name: String, tag : [Tags], image : [Image], artisan : inout ArtisanInfo){
        
        let newProduct = Productinfo(name: name, artisanId: artisan.id, image: image, tag: tag)
        self.products.append(newProduct)
        artisan.idProduct.append(newProduct.id)
        return
    }
    
    func addFavorite(index: Int){
        self.products[index].favorite = true
        return
    }
}
