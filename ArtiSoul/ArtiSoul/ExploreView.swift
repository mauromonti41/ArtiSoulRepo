//
//  ContentView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 07/02/22.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var searchText = ""
    
    let spacing: CGFloat = 10
    let numberOfRows = 2
//    let columns = Array(repeating: GridItem(.flexible(), spacing: spacing), count: numberOfRows)
   
    
    var body: some View {
        NavigationView{
            ScrollView{
                let columns = Array(repeating: GridItem(.flexible(), spacing: spacing), count: numberOfRows)
                LazyVGrid(columns: columns, spacing: spacing){
                    
                }
            }
                .searchable(text: $searchText)
                .navigationBarTitle("Explore")
                
        }

    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
