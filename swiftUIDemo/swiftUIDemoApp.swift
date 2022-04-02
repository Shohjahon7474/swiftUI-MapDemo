//
//  swiftUIDemoApp.swift
//  swiftUIDemo
//
//  Created by Shohjahon Numonovich on 4/2/22.
//

import SwiftUI

@main
struct swiftUIDemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
