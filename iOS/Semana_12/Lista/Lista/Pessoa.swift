//
//  Pessoa.swift
//  Lista
//
//  Created by Valéria Cavalcanti on 28/09/21.
//

import Foundation

class Pessoa : Identifiable {
    var nome: String
    var idade: Int
    
    init(nome: String, idade: Int){
        self.nome = nome
        self.idade = idade
    }
}
