//
//  ArtiSoulApp.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 07/02/22.
//

import SwiftUI

@main
struct ArtiSoulApp: App {
    let persistenceController = PersistenceController.shared
    
    @StateObject var productViewModel = ProductViewModel()
    @StateObject var artisanViewModel = ArtisanViewModel()
    @State var defaultArtisan : ArtisanModel = ArtisanModel(name: "", surname: "", title: "", profileImage: Image("defaultImage"), link: [Links(site: "", URL: "")], access: AccessModel(email: "", password: ""))
    
    var body: some Scene {
        WindowGroup {
            MainView(artisan: defaultArtisan)
                .environmentObject(productViewModel)
                .environmentObject(artisanViewModel)
                .preferredColorScheme(.light)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
