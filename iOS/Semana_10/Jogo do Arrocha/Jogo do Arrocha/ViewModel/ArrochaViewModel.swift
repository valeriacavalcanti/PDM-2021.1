//
//  Arrocha.swift
//  Jogo do Arrocha
//
//  Created by Valéria Cavalcanti.
//

import SwiftUI

class ArrochaViewModel: ObservableObject {
    // menor valor do intervalo.
    var menor:Int
    // maior valor do intervalo.
    var maior:Int
    // número sorteado (gerado aleatoriamente)
    var sorteio:Int
    // status do jogo (JogoStatus é um enum)
    @Published var status:JogoStatus
    
    // configuração do novo jogo
    init() {
        self.menor = 1
        self.maior = 100
        // o número sorteado tem que estar no intervalo (menor, maior)
        self.sorteio = Int.random(in: self.menor + 1 ... self.maior - 1)
        self.status = .executando
    }
    
    // verifica se o número jogado é valido.
    func valido(valor: Int) -> Bool {
        return valor > self.menor && valor < self.maior && valor != self.sorteio
    }
    
    // verifica se o intervalo está "arrochado".
    func arrochado() -> Bool {
        return self.menor + 1 == self.maior - 1
    }
    
    // realiza a jogada
    func jogada(chute: Int){
        if self.valido(valor: chute){
            if chute < self.sorteio{
                // atualiza o intervalo do jogo
                self.menor = chute
            }else{
                // atualiza o intervalo do jogo
                self.maior = chute
            }
            if arrochado(){
                // número sorteado foi arrochado, jogador venceu!
                self.status = .venceu
            }else{
                // jogo permanece executando
                self.status = .executando
            }
        }else{
            // chute inválido, jogador perdeu!
            self.status = .perdeu
        }
    }
}
