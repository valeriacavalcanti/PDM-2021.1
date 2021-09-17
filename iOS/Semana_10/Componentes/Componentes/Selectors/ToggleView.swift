//
//  ToggleView.swift
//  Componentes
//
//  Created by Valéria Cavalcanti.
//  https://developer.apple.com/documentation/swiftui/toggle

import SwiftUI

struct ToggleView: View {
    @State private var microfone:Bool = false
    
    var body: some View {
        VStack{
            Toggle(isOn: $microfone){
                Label("Microfone", systemImage: "mic.fill")
                    .imageScale(.large)
            }
            .padding()
            
            Text(microfone.description)
        }
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
