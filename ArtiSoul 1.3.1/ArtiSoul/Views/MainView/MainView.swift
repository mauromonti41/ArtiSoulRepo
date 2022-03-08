//
//  HeaderView.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 16/02/22.
//

import Foundation
import SwiftUI

struct MainView: View {
    let explore : LocalizedStringKey = "text 10"
    let favorites : LocalizedStringKey = "text 11"
    let profile : LocalizedStringKey = "text 12"
    
    var body: some View {
        TabView{
            
            ExploreView()
                .tabItem{
                    Label(explore, systemImage: "square.on.square")
            }
            FavoriteView()
                .tabItem{
                    Label(favorites, systemImage:"heart.fill")
                }
            
            ProfileView()
                .tabItem{
                    Label(profile, systemImage: "person.crop.circle")
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
