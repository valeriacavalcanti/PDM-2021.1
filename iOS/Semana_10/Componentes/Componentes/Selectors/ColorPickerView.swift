//
//  ColorPickerView.swift
//  Componentes
//
//  Created by Valéria Cavalcanti.
//  https://developer.apple.com/documentation/swiftui/colorpicker

import SwiftUI

struct ColorPickerView: View {
    @State var cor: Color = Color.white
    
    var body: some View {
        VStack{
            ColorPicker("Escolha a cor", selection: $cor)
                .padding()
                .background(Color.white)
                .border(Color.black)
            Spacer()
        }
        .background(cor)
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
