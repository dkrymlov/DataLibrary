//
//  DataLibraryApp.swift
//  DataLibrary
//
//  Created by Даниил Крымлов on 28.09.2023.
//

import SwiftUI

@main
struct DataLibraryApp: App {
    
    @StateObject var dataController : DataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
