//
//  Tela02.swift
//  Navigation1
//
//  Created by Valéria Cavalcanti on 24/09/21.
//

import SwiftUI

struct Tela02View: View {
    @ObservedObject var navigationVM: NavigationViewModel
    
    var body: some View {
        Text("Tela 02")
            .font(.largeTitle)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity)
            .frame(maxHeight: .infinity)
            .background(Color.red)
            .foregroundColor(.white)
            .ignoresSafeArea()
            .onTapGesture {
                self.navigationVM.tela = .main
            }
    }
}

struct Tela02View_Previews: PreviewProvider {
    static var previews: some View {
        Tela02View(navigationVM: NavigationViewModel())
    }
}
