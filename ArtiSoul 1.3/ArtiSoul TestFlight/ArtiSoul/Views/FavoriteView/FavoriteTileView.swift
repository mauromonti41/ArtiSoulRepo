//
//  FavoriteTileView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 03/03/22.
//

import SwiftUI

struct FavoriteTileView: View {
    
    
    @State var product : ProductModel
   
    
    var body: some View {
        ZStack(alignment: .topTrailing){
        ZStack(alignment: .bottomLeading){
            
            Image(product.image1)
                .resizable()
                .scaledToFill()
                .frame(width: 187, height: 187)
                .cornerRadius(10)
                .padding(0.0)
                
            
            VStack(alignment: .leading, spacing: 0.0){
            
                Text(product.name)
                    .bold()
                    .font(.system(size: 16))
                    .foregroundColor(.primary)
                    
                
                Text("\(product.artisanName)"  )
                    .font(.system(size: 13))
                    .foregroundColor(.secondary)
                    
                    
            }
            .padding()
            
        }
            FavoriteButtonView(product: product)
        }
        
    }
}

//struct FavoriteTileView_Previews: PreviewProvider {
//    static var previews: some View {
//        FavoriteTileView()
//    }
//}
