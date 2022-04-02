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
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
