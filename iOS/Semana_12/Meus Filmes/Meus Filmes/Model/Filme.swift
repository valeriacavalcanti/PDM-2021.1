//
//  Filme.swift
//  Meus Filmes
//
//  Created by Valéria Cavalcanti on 28/09/21.
//

import Foundation

class Filme: Identifiable {
    var id: Int
    var nome: String
    var nota: Int
    var genero: Genero
    
    init(id: Int, nome: String, nota: Int, genero: Genero){
        self.id = id
        self.nome = nome
        self.nota = nota
        self.genero = genero
    }
}
