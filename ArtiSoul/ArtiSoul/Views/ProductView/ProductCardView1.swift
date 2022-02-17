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
    
    var body: some View {
            
        ZStack(){
                
                RoundedRectangle(cornerRadius: 20)
                .fill(Color("gray1"))
                .frame(width: 376, height: 638)
                            
                productImage
                    .resizable()
                    .scaledToFill()
                    .frame(width: 375, height: 539, alignment: .center)
                    .cornerRadius(10)
                    .padding(0.0)
                    .offset(x: 0, y: -49)
                    
            Rectangle()
            .fill(Color("gray1"))
            .frame(width: 376, height: 8)
            .offset(x: 0, y: 219)
            
            VStack(alignment: .leading, spacing: 5.0){
                
                    Text("My total production time:")
                        .bold()
                        .font(.system(size: 17))
                        .foregroundColor(.primary)
                        
                    
                    Text(descrizione)
                        .font(.system(size: 16))
                        .foregroundColor(.secondary)
                        
                        
                }
                .padding()
                .offset(x: -36, y: 260)
//                .frame(alignment: .bottomLeading)
            }.frame(width: 330, height: 538)
            
            .toolbar {
                /*ToolbarItem {
//                     if{
                    Button/*(action: switchFavorite(favorite: ))*/ {
                            Image(systemName: "heart")
                        }
                    }*/
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
        ProductCardView(productImage: Image("SingleFlowerJar_1"), descrizione: "8 days, which is equivalent Harry Potter Marathon", favorite: false)
    }
}
