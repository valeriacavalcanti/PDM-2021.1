//
//  ContentView.swift
//  Meus Filmes
//
//  Created by Valéria Cavalcanti on 28/09/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var fvm: FilmeViewModel
    
    var body: some View {
        NavigationView{
            VStack{
                List(fvm.lista){ filme in
                    FilmeView(filme: filme)
                }
            }
            .navigationTitle("Filmes")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: FormView(fvm: self.fvm)) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fvm: FilmeViewModel())
    }
}
