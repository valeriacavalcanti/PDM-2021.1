//
//  ContentView.swift
//  Lista
//
//  Created by Valéria Cavalcanti on 28/09/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var pvm: PessoaViewModel
    
    var body: some View {
        NavigationView{
            List(self.pvm.lista){ pessoa in
                HStack{
                    Image(systemName: "person")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .foregroundColor(.red)
                    VStack (alignment: .leading, spacing: 1, content: {
                        NavigationLink(pessoa.nome, destination: PessoaView(pessoa: pessoa))
                        Text("Idade: \(pessoa.idade)")
                    })
                }
                .padding()
            }
            .navigationTitle("Pessoas")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(pvm: PessoaViewModel())
    }
}
