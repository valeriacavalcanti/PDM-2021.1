//
//  ContadorApp.swift
//  Contador
//
//  Created by Valéria Cavalcanti on 10/09/21.
//

import SwiftUI

@main
struct ContadorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(contadorVM: ContadorViewModel())
        }
    }
}
