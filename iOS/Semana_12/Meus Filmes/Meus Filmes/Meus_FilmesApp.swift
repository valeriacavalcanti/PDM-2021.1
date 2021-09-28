//
//  Meus_FilmesApp.swift
//  Meus Filmes
//
//  Created by Valéria Cavalcanti on 28/09/21.
//

import SwiftUI

@main
struct Meus_FilmesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(fvm: FilmeViewModel())
        }
    }
}
