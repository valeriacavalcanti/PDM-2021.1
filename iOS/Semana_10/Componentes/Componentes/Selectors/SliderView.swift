//
//  SliderView.swift
//  Componentes
//
//  Created by Valéria Cavalcanti.
//  https://developer.apple.com/documentation/swiftui/slider

import SwiftUI

struct SliderView: View {
    @State private var valor:Float = 0
    @State private var isEditing:Bool = false
    
    var body: some View {
        VStack{
            Slider(value: $valor, in: 0...10, step: 1) { editing in
                isEditing = editing
            }
            
            Text(Int(valor).description)
                .foregroundColor(isEditing ? .red : .blue)
        }
        .padding()
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
