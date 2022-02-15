//
//  ContentView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 07/02/22.
//

import SwiftUI
import Foundation


struct MainView: View {
    
    var body: some View {
        TabView{
        ExploreView()
                .tabItem{
                    Label("Explore", systemImage: "magnifyingglass")
            }
        Text("This should be a favourite section")
                .tabItem{
                    Label("Favourites", systemImage:"heart.fill")
                }
            ProfileView()
                .tabItem{
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
       MainView()
    }
}
