//
//  FilmeViewModel.swift
//  Meus Filmes
//
//  Created by Valéria Cavalcanti on 28/09/21.
//

import SwiftUI

class FilmeViewModel: ObservableObject{
    @Published var lista:[Filme]
    
    init(){
        self.lista = []
        //self.load()
    }
    
    func load() {
        var qtde = 0
        for genero in Genero.allCases {
            qtde += 1
            self.lista.append(Filme(id: qtde, nome: genero.rawValue, nota: qtde, genero: genero))
        }
    }
}
