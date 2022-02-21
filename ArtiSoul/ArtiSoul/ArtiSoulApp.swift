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

    var body: some Scene {
        WindowGroup {
            EditingProfileView(name: "Insert Your Name", surname: "Insert Your Surname", work: "Insert your job", linkToBeAdded: "Insert a new link", creationToBeAdded: "Insert a new creation")
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
