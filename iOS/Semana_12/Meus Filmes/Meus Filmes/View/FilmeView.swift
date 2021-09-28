//
//  FilmeView.swift
//  Meus Filmes
//
//  Created by Valéria Cavalcanti on 28/09/21.
//

import SwiftUI

struct FilmeView: View {
    let filme: Filme
    
    var body: some View {
        HStack{
            Image(self.filme.genero.description)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60, alignment: .center)
                .padding(.trailing, 6)
            VStack (alignment: .leading){
                Text(self.filme.nome)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom, 1)
                Text(self.filme.nota.description)
            }
            Spacer()
        }
        .padding(10)
    }
}

struct FilmeView_Previews: PreviewProvider {
    static var previews: some View {
        let filme = Filme(id: 1, nome: "Teste", nota: 10, genero: .faroeste)
        FilmeView(filme: filme)
    }
}
