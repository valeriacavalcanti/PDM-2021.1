//
//  ContentView.swift
//  Interface
//
//  Created by Valéria Cavalcanti on 21/09/21.
//

import SwiftUI

struct ContentView: View {
    @State private var nome: String = ""
    
    var body: some View {
        VStack{
//            Spacer()
            TextField("Nome", text: self.$nome)
                .padding()
                .border(Color.black, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
//            Spacer()
            HStack{
                Text("Nome: ")
                Text(self.nome)
            }
//            Spacer()
            Image("ifpb")
                .resizable()
                .scaledToFit()
                .padding(40)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
