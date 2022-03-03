//
//  FavoriteView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 21/02/22.
//

import SwiftUI

struct FavoriteView: View {
    
    @EnvironmentObject var productViewModel : ProductViewModel
    @EnvironmentObject var favoriteViewModel : FavoriteViewModel
    @StateObject private var filters = FiltersClassDue()
    @State private var searchText = ""
    
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns, spacing: 7){
                    
                        ForEach(favoriteViewModel.favorites){item in
                            NavigationLink(destination: ProductView(product: item)){
                                FavoriteTileView(product: item)
                            
                        }
                    }
                }
            }
            .padding(.horizontal, 16)
            .searchable(text: $searchText, prompt: "Search") {
                Text("Try:")
                    .font(.title2)
                    .fontWeight(.bold)
                //                        .foregroundColor(Color("AccentColor"))
                
                
                // filter list by moood
                ForEach(filters.information) { item in
                    
                    Text(item.name)
                        .padding(.leading)
                    
                }
            }
            .navigationTitle("Favorites")
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
