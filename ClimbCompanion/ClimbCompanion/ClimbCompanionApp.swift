//
//  ClimbCompanionApp.swift
//  ClimbCompanion
//
//  Created by Linczewski, Mikolaj on 08/10/2023.
//

import SwiftUI
import SwiftData

@main
struct ClimbCompanionApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            RouteModel.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        
        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
