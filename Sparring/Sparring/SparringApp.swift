//
//  SparringApp.swift
//  Sparring
//
//  Created by Wojciech Kulas on 22/10/2020.
//

import SwiftUI

@main
struct SparringApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
