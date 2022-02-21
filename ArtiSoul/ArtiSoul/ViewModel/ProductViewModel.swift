//
//  ProductViewModel.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 15/02/22.
//

import Foundation
import SwiftUI



class ProductViewModel: ObservableObject {
    

    
    @Published var products: [ProductModel] = [
        ProductModel(name: "Mug", cardDetails:
//             Mug1
                    [CardModel(descrizione: "15 days, which is equivalent to the first five seasons of Big Bang Theory.", image: Image("Mug1"), infos: "My total production time:"),
         
                     CardModel(descrizione: "Clay, nail varnish", image: Image("Mug2"), infos: "What am I made of:"),
                     CardModel(descrizione: "Wash me by hand. Dry me carefully.", image: Image("Mug2"), infos: "How to take care of me:"),
                                  
                     CardModel(descrizione: "Wrap me in paper that protects me and put me in a box.", image: Image("Mug3"), infos: "How to move me:")], artisanId: UUID(), favorite: false, tag: [.all,.Clay]),
        
//        2 Anemone
        ProductModel(name: "Anemone", cardDetails:
                        
                        [CardModel(descrizione: "15 days, which is equivalent to the first five seasons of Big Bang Theory.", image: Image("Anemone1"), infos: "My total production time:"),
         
                         CardModel(descrizione: "Clay, nail varnish", image: Image("Anemone2"), infos: "What am I made of:"),
                         CardModel(descrizione: "Wash me by hand. Dry me carefully.", image: Image("Anemone3"), infos: "How to take care of me:"),
                                  
                         CardModel(descrizione: "Wrap me in paper that protects me and put me in a box.", image: Image("Anemone4"), infos: "How to move me:")], artisanId: UUID(), favorite: false, tag: [.all,.Clay]),
        
//        3 Single Flower Jar
        ProductModel(name: "Single Flower Jar", cardDetails:
                        
                        [CardModel(descrizione: "15 days, which is equivalent to the first five seasons of Big Bang Theory.", image: Image("SingleFlowerJar_1"), infos: "My total production time:"),
         
         CardModel(descrizione: "Clay, nail varnish", image: Image("SingleFlowerJar_2"), infos: "What am I made of:"),
         CardModel(descrizione: "Wash me by hand. Dry me carefully.", image: Image("SingleFlowerJar_3"), infos: "How to take care of me:"),
                                  
         CardModel(descrizione: "Wrap me in paper that protects me and put me in a box.", image: Image("SingleFlowerJar_4"), infos: "How to move me:")], artisanId: UUID(), favorite: false, tag: [.all,.Clay])]
        


    func addNewProduct(name: String, tag : [Tags],descrizione: [String], image : [Image], artisan : inout ArtisanModel){
        
        let newProduct = ProductModel(name: name, cardDetails: [
            CardModel(descrizione: descrizione[0], image: image[0], infos: "My total production time:"),
            CardModel(descrizione: descrizione[1], image: image[1], infos: "What am I made of:"),
            CardModel(descrizione: descrizione[2], image: image[2], infos: "How to take care of me:"),
            CardModel(descrizione: descrizione[3], image: image[3], infos: "How to move me:")] , artisanId: artisan.id, favorite: false, tag: tag)
        
        self.products.append(newProduct)
        artisan.idProduct.append(newProduct.id)
        return
    }
    
    func addFavorite(index: Int){
        self.products[index].favorite = true
        return
    }
}
