//
//  ButtonView.swift
//  Componentes
//
//  Created by Valéria Cavalcanti.
//  https://developer.apple.com/documentation/swiftui/button

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack{
            Button("Botão 1"){
                print("Clicou no botão 1")
            }
            .padding()
            
            Button("Botão 2", action: onClickButton2)
                .padding()
            
            Button(action: onClickButton3, label: {
                Label("Botão 3", systemImage: "command")
                    .imageScale(.large)
            })
        }
    }
    
    func onClickButton2() {
        print("Clicou no botão 2")
    }
    
    func onClickButton3() {
        print("Clicou no botão 3")
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
