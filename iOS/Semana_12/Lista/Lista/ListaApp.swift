//
//  ListaApp.swift
//  Lista
//
//  Created by Valéria Cavalcanti on 28/09/21.
//

import SwiftUI

@main
struct ListaApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(pvm: PessoaViewModel())
        }
    }
}
