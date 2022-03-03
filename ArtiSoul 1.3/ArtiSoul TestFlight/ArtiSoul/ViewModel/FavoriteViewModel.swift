//
//  FavoriteViewModel.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 03/03/22.
//

import Foundation
import SwiftUI

//extension Array where Element: AnyObject {
//    mutating func removeFirst(object: AnyObject) {
//        guard let index = firstIndex(where: {$0 === object}) else { return }
//        remove(at: index)
//    }
//}

class FavoriteViewModel : ObservableObject{
    
    @Published var favorites : [ProductModel] = []
    
    
    public func addToFavorites(_ productToBeAdded : ProductModel){
        favorites.append(productToBeAdded)
    }
    public func removeFromFavorites (_ productToBeRemoved : ProductModel){
        guard let index = favorites.firstIndex(where: {$0.id == productToBeRemoved.id}) else  {return}
        favorites.remove(at: index )
    }
    public func checkIfFavorite(_ productToBeChecked : ProductModel) -> Bool{
       if favorites.contains(productToBeChecked){
           return true
        }else {
            return false
        }
    }
}
