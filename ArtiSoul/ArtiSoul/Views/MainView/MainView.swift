//
//  ContentView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 07/02/22.
//

import SwiftUI
import Foundation


struct MainView: View {
    
    @StateObject private var filters = filtersClassDue()
    @StateObject private var viewModelProduct = ProductViewModel()
    @StateObject private var viewModelArtisan = ArtisanViewModel()
    @State private var searchText = ""
    
    var body: some View{
        NavigationView{
            
                ScrollView{
                    GridView(artisans: viewModelArtisan.artisans, products: viewModelProduct.products)
                }
            
                .searchable(text: $searchText, prompt: "Search") {
                    Text("Try:")
                        .font(.title2)
                        .fontWeight(.bold)
//                        .foregroundColor(Color("AccentColor"))
                    
                        
                    // filter list by moood
                    ForEach(filters.information) { item in
                    
                            HStack{
                                
                                Text(item.icon)
//                                    .foregroundColor(Color("AccentColor"))
                                    .multilineTextAlignment(.center)
                                    .lineLimit(2)
                                
                                Text(item.name)
                                    .padding(.leading)
                                
                        }
                    }
                }
            
            
            
            .toolbar{
                
//                Bottoni
                
            }.navigationTitle("Explore")
        }
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
       MainView()
    }
}
