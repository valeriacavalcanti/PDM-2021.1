//
//  MenuView.swift
//  Componentes
//
//  Created by Valéria Cavalcanti.
//  https://developer.apple.com/documentation/swiftui/menu

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack{
            Menu("Opções") {
                Button("Primeira", action: primeira)
                Button("Segunda", action: segunda)
                Menu("Mais"){
                    Button(action: terceira){
                        Label("Terceira", systemImage: "light.min")
                    }
                    Button(action: quarta){
                        Label("Quarta", systemImage: "light.max")
                    }
                }
            }
        }
    }
}

func primeira() {
    print("Primeira")
}

func segunda() {
    print("Segunda")
}

func terceira() {
    print("Terceira")
}

func quarta() {
    print("Quarta")
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
