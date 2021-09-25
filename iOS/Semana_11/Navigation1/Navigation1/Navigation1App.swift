//
//  Navigation1App.swift
//  Navigation1
//
//  Created by Valéria Cavalcanti on 24/09/21.
//

import SwiftUI

@main
struct Navigation1App: App {
    var body: some Scene {
        WindowGroup {
            ContentView(navigationVM: NavigationViewModel())
        }
    }
}
