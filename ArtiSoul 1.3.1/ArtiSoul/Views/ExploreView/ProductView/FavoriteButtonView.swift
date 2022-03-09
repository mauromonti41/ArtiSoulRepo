//
//  ProductCardView2.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 02/03/22.
//

import SwiftUI

struct FavoriteButtonView: View {
    
    @EnvironmentObject var favoriteViewModel : FavoriteViewModel
    
    @State var product : ProductModel
    
    var body: some View {
        Button(action: {
            
            
            if !favoriteViewModel.checkIfFavorite(product){
                
                favoriteViewModel.addToFavorites(product)
            }
            else{
              
                favoriteViewModel.removeFromFavorites(product)
            }
                
                
                
        }){
            if !favoriteViewModel.checkIfFavorite(product)
                
                
//                !isFavorite
            
            
            {
                Image(systemName: "heart")
                    .resizable()
                    .foregroundColor(.accentColor)
                    .frame(width: 30, height: 30)
                    .padding()
                .frame(width: 37, height: 37)
                .padding(.top,14)
                .padding(.trailing,14)
            }
            else {
                Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundColor(.accentColor)
                    .frame(width: 30, height: 30)
                    .padding()
                    .frame(width: 37, height: 37)
                    .padding(.top,14)
                    .padding(.trailing,14)
            }
        }
    }
}



