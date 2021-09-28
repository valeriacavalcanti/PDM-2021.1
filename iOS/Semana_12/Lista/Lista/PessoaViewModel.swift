//
//  PessoaViewModel.swift
//  Lista
//
//  Created by Valéria Cavalcanti on 28/09/21.
//

import SwiftUI

class PessoaViewModel: ObservableObject{
    @Published var lista:[Pessoa]
    
    init(){
        self.lista = []
        self.load()
    }
    
    func load() {
        for i in 1 ... 10{
            self.lista.append(Pessoa(nome: "Pessoa \(i)", idade: i))
        }
    }
}
