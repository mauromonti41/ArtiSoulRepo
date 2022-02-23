//
//  ProductViewModel.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 15/02/22.
//

import Foundation
import SwiftUI



class ProductViewModel: ObservableObject{
    
    @Published var products: [ProductModel] = load("Products.json")
       
}
        func load<T: Decodable>(_ filename: String) -> T {
            let data: Data

            guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
            else {
                fatalError("Couldn't find \(filename) in main bundle.")
            }

            do {
                data = try Data(contentsOf: file)
            } catch {
                fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
            }

            do {
                let decoder = JSONDecoder()
                return try decoder.decode(T.self, from: data)
            } catch {
                fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
            }
        }


//    func addNewProduct(name: String, tag : [Tags],descrizione: [String], image : [Image], artisan : inout ArtisanModel){
//
//        let newProduct = ProductModel(name: name, cardDetails: [
//            CardModel(description: descrizione[0], image: image[0], infos: "My total production time:"),
//            CardModel(description: descrizione[1], image: image[1], infos: "What am I made of:"),
//            CardModel(description: descrizione[2], image: image[2], infos: "How to take care of me:"),
//            CardModel(description: descrizione[3], image: image[3], infos: "How to move me:")] , artisanId: artisan.id, favorite: false, tag: tag)
//
//        self.products.append(newProduct)
//        artisan.idProduct.append(newProduct.id)
//        return
//    }
    
//    func addFavorite(index: Int){
//        self.products[index].favorite = true
//        return
//    }

