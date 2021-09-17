//
//  Jogo_do_ArrochaApp.swift
//  Jogo do Arrocha
//
//  Created by Valéria Cavalcanti.
//

import SwiftUI

@main
struct Jogo_do_ArrochaApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(arrochaVM: ArrochaViewModel())
        }
    }
}
