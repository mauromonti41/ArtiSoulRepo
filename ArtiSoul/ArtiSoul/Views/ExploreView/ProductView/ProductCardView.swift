//
//  ProductCardView.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 17/02/22.
//

import SwiftUI
import Foundation

struct ProductCardView: View {
    
    
    var productImage: Image
    var descrizione: String
    var favorite: Bool
    var info: String
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0){
            productImage
                .resizable()
                .scaledToFill()
                .frame(maxWidth: 375, maxHeight: 460, alignment: .center)
                .cornerRadius(10, corners: [.topLeft, .topRight])
                .padding(0.0)
            ProductCardBot(descrizione: descrizione, info: info)
                .frame(maxWidth:375)
        }
        
        
    }
    
    func switchFavorite(favorite: inout Bool){
        
        if favorite == false{
            favorite = true
        }
        
        else{
            favorite = false
        }
        return
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(productImage: Image("SingleFlowerJar_1"), descrizione: "8 days, which is equivalent Harry Potter Marathon", favorite: false, info: "My total production time:")
    }
}
