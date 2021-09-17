//
//  StepperView.swift
//  Componentes
//
//  Created by Valéria Cavalcanti.
//  https://developer.apple.com/documentation/swiftui/stepper

import SwiftUI

struct StepperView: View {
    @State private var valor:Int = 0
    
    var body: some View {
        VStack{
            Stepper(value: $valor, in: 0...10) {
                Label("Volume", systemImage: "speaker.wave.2.fill")
                    .imageScale(.large)
            }
            .padding()
            Text(valor.description)
        }
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
