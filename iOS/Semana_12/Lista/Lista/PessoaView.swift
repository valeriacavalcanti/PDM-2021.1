//
//  PessoaView.swift
//  Lista
//
//  Created by Valéria Cavalcanti on 28/09/21.
//

import SwiftUI

struct PessoaView: View {
    let pessoa: Pessoa
    
    var body: some View {
        VStack{
            Spacer()
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .frame(width: 160)
            Spacer()
            Text(pessoa.nome)
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
            Text(pessoa.idade.description)
                .font(.title)
            Spacer()
        }
        .navigationTitle("Pessoa")
    }
}

struct PessoaView_Previews: PreviewProvider {
    static var previews: some View {
        PessoaView(pessoa: Pessoa(nome: "Teste", idade: 10))
    }
}
