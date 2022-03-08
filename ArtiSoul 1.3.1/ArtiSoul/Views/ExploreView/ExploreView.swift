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
    let explore : LocalizedStringKey = "text 10"
    let Search : LocalizedStringKey = "text 13"
    let Try : LocalizedStringKey = "text 14"
    @State var selectedMaterial : String = ""
    var body: some View{
        NavigationView{
            
            ScrollView{
                GridView()
            }
            
            .searchable(text: $searchText, prompt: Search) {
                Text(Try)
                    .font(.title2)
                    .fontWeight(.bold)
                //                        .foregroundColor(Color("AccentColor"))
                
                
                // filter list by moood
                ForEach(filters.materials) { item in
                    if item.name != " "{
                        Button(action: {selectedMaterial = item.name}){
                    Text(item.name)
                        .padding(.leading)
                    }
                    }
                }
            }
            .navigationTitle(explore)
        }
    }
}



struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
