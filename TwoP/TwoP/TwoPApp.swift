//
//  TwoPApp.swift
//  TwoP
//
//  Created by admin on 28.09.2023.
//

import SwiftUI

@main
struct TwoPApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
