//
//  TextFieldView.swift
//  Componentes
//
//  Created by Valéria Cavalcanti.
//  https://developer.apple.com/documentation/swiftui/textfield

import SwiftUI

struct TextFieldView: View {
    @State private var textField:String = ""
    
    var body: some View {
        VStack{
            TextField("Hint", text: self.$textField)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
