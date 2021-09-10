//
//  main.swift
//  Dicas
//
//  Created by Valéria Cavalcanti on 10/09/21.
//

import Foundation

var idade:Int = 15

extension Int{
    func toString() -> String {
        return self.description
    }
}

print(idade)
print("Idade = " + idade.description)
print("Idade = \(idade)")
print("Idade = " + idade.toString())
