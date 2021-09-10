//
//  ContadorViewModel.swift
//  Contador
//
//  Created by Valéria Cavalcanti on 10/09/21.
//

import SwiftUI

class ContadorViewModel: ObservableObject{
    @Published var quantidade: Int = 0
    
    func incrementa() {
        if (self.quantidade < 10){
            self.quantidade += 1
        }
    }
    
    func decrementa(){
        if (self.quantidade > 0){
            self.quantidade -= 1
        }
    }
}
