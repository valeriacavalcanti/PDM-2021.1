//
//  SecureFieldView.swift
//  Componentes
//
//  Created by Valéria Cavalcanti.
//  https://developer.apple.com/documentation/swiftui/securefield

import SwiftUI

struct SecureFieldView: View {
    @State private var texto:String = ""
    
    var body: some View {
        VStack{
            SecureField("Secure Field", text: $texto)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Label(self.texto, systemImage: "key")
                .imageScale(.large)
        }
    }
}

struct SecureFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldView()
    }
}
