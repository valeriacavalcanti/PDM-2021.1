//
//  ListagemApp.swift
//  Listagem
//
//  Created by Valéria Cavalcanti on 28/09/21.
//

import SwiftUI

@main
struct ListagemApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
