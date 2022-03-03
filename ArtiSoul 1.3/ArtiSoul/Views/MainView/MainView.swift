//
//  HeaderView.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 16/02/22.
//

import Foundation
import SwiftUI

struct MainView: View {
    @State var defaultArtisan : ArtisanModel = ArtisanModel(name: "", surname: "", title: "", profileImage: Image("defaultImage"), link: [Links(site: "", URL: "")], access: AccessModel(email: "", password: ""))
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
            
            ProfileView(artisan: defaultArtisan)
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
