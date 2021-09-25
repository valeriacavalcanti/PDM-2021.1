//
//  ContentView.swift
//  Navigation2
//
//  Created by Valéria Cavalcanti on 24/09/21.
//

import SwiftUI

struct ContentView: View {
    @State private var exibirFormulario:Bool = false
    // Faltou @State
    @State private var qtde:Int = 0
    
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                NavigationLink("Formulário", destination: FormView(), isActive: $exibirFormulario)
                Spacer()
                Button("Formulário"){
                    self.qtde += 1
                    if (self.qtde == 4){
                        self.exibirFormulario = true
                        self.qtde = 0
                    }
                }
                Spacer()
            }
            .navigationBarTitle("Tela Principal")
            .navigationBarHidden(false)
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
