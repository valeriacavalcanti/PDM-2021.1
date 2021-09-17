//
//  ContentView.swift
//  Jogo do Arrocha
//
//  Created by Valéria Cavalcanti.
//

import SwiftUI

struct ContentView: View {
    // a View está observando o status do ViewModel
    // no caso, o status do jogo
    @ObservedObject var arrochaVM: ArrochaViewModel
    
    var body: some View {
        Text("Jogo do Arrocha")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(arrochaVM: ArrochaViewModel())
    }
}
