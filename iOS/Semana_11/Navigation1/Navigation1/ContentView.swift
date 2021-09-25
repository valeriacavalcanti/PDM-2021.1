//
//  ContentView.swift
//  Navigation1
//
//  Created by Valéria Cavalcanti on 24/09/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var navigationVM: NavigationViewModel
    
    var body: some View {
        if (self.navigationVM.tela == .main){
            main
        }else if (self.navigationVM.tela == .tela01){
            Tela01View(navigationVM: self.navigationVM)
        }else{
            Tela02View(navigationVM: self.navigationVM)
        }
    }
}

extension ContentView{
    var main: some View{
        VStack{
            Spacer()
            Text("Tela Principal")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
            HStack{
                Spacer()
                Button("Tela 01"){
                    self.navigationVM.tela = .tela01
                }
                Spacer()
                Button("Tela 02"){
                    self.navigationVM.tela = .tela02
                }
                Spacer()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(navigationVM: NavigationViewModel())
    }
}
