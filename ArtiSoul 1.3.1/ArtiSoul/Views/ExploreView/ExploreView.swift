//
//  ContentView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 07/02/22.
//

import SwiftUI
import Foundation


struct ExploreView: View {
    @EnvironmentObject var productViewModel : ProductViewModel
    @StateObject private var filters = FiltersClassDue()
    @State private var searchText = ""
    
    var body: some View{
        NavigationView{
            
            ScrollView{
                GridView()
            }
            
            .searchable(text: $searchText, prompt: "Search") {
                Text("Try:")
                    .font(.title2)
                    .fontWeight(.bold)
                //                        .foregroundColor(Color("AccentColor"))
                
                
                // filter list by moood
                ForEach(filters.materials) { item in
                    
                    Text(item.name)
                        .padding(.leading)
                    
                }
            }
            .navigationTitle("Explore")
        }
    }
}



struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
