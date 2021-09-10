//
//  ContentView.swift
//  Contador
//
//  Created by Valéria Cavalcanti on 10/09/21.
//

import SwiftUI

struct ContentView: View {
    //@State var quantidade: Int = 0
    @ObservedObject var contadorVM: ContadorViewModel
    
    var body: some View {
        VStack{
            contador
            HStack{
                btIncrementa
                btDecrementa
            }
        }
    }
}

extension ContentView{
    var contador: some View{
        Text(self.contadorVM.quantidade.description)
            .fontWeight(.bold)
            .padding()
            .font(.title)
    }
}

extension ContentView{
    var btIncrementa: some View{
        Button("+"){
            // incrementar a quantidade
            self.contadorVM.incrementa()
        }
        .font(.title)
        .padding(20)
    }
}

extension ContentView{
    var btDecrementa: some View{
        Button("-"){
            // decrementar a quantidade
            self.contadorVM.decrementa()
        }
        .font(.title)
        .padding(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //var cvm = ContadorViewModel()
        ContentView(contadorVM: ContadorViewModel())
    }
}
