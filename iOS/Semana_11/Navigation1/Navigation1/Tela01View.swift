//
//  Tela01.swift
//  Navigation1
//
//  Created by Valéria Cavalcanti on 24/09/21.
//

import SwiftUI

struct Tela01View: View {
    @ObservedObject var navigationVM: NavigationViewModel
    
    var body: some View {
        Text("Tela 01")
            .font(.largeTitle)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity)
            .frame(maxHeight: .infinity)
            .background(Color.blue)
            .foregroundColor(.white)
            .ignoresSafeArea()
            .onTapGesture {
                self.navigationVM.tela = .main
            }
    }
}

struct Tela01View_Previews: PreviewProvider {
    static var previews: some View {
        Tela01View(navigationVM: NavigationViewModel())
    }
}
