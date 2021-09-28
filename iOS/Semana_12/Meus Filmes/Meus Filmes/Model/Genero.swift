//
//  Genero.swift
//  Meus Filmes
//
//  Created by Valéria Cavalcanti on 28/09/21.
//

import Foundation

enum Genero: String, CaseIterable, Identifiable {
    var id:String { self.description }
    case acao = "Ação"
    case aventura = "Aventura"
    case comedia = "Comédia"
    case documentario = "Documentário"
    case drama = "Drama"
    case faroeste = "Faroeste"
    case ficcao = "Ficção"
    case musical = "Musical"
    case policial = "Policial"
    case romance = "Romance"
    case suspense = "Suspense"
    case terror = "Terror"
    
    var description: String{
        return String(describing: self)
    }
}
