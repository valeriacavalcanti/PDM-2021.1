//
//  ContentView.swift
//  Jogo do Arrocha
//
//  Created by Valéria Cavalcanti.
//

import SwiftUI

struct ContentView: View {
    // a View está observando o status do ViewModel
    // no caso, o status do jogo
    @ObservedObject var arrochaVM: ArrochaViewModel
    @State private var chute:String = ""
    
    var body: some View {
        VStack{
            Text("Jogo do Arrocha")
                .font(.largeTitle)
                .fontWeight(.bold)
            HStack{
                Group{
                    Text("1")
                    Text("100")
                }.foregroundColor(.blue)
                .font(.title)
            }
            
            TextField("Chute", text: self.$chute)
                .frame(maxWidth: 80)
                .frame(maxHeight: 40)

            Button("Jogar") {
                //
            }
            
            Text(self.arrochaVM.status.rawValue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(arrochaVM: ArrochaViewModel())
    }
}
