//
//  HeaderView.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 16/02/22.
//

import Foundation
import SwiftUI

struct MainView: View {
    
    var body: some View {
        TabView{
            
            ExploreView()
                .tabItem{
                    Label("Explore", systemImage: "square.on.square")
            }
            FavoriteView()
                .tabItem{
                    Label("Favorites", systemImage:"heart.fill")
                }
            
            ProfileView()
                .tabItem{
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
}

struct MainView_Preview: PreviewProvider {
    static var previews: some View {
        MainView()
//            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
