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
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(productViewModel)
                .environmentObject(artisanViewModel)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
