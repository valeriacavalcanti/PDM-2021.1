//
//  FormView.swift
//  Navigation2
//
//  Created by Valéria Cavalcanti on 24/09/21.
//

import SwiftUI

struct FormView: View {
    @State private var nome:String = ""
    
    var body: some View {
        VStack{
            Spacer()
            TextField("Nome", text: self.$nome)
                .padding(10)
                .border(Color.gray)
                .padding()
            Spacer()
            Button("Salvar"){
        
            }
            Spacer()
        }
        .navigationBarTitle("Formulário")
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
