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
    @StateObject var favoriteViewModel = FavoriteViewModel()
    @StateObject var phasesViewModel = PhaseViewModel()
    @StateObject var filters = FiltersClassDue()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(productViewModel)
                .environmentObject(artisanViewModel)
                .environmentObject(favoriteViewModel)
                .environmentObject(phasesViewModel)
                .environmentObject(filters)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .preferredColorScheme(.light)
        }
    }
}
