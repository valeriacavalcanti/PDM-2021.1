//
//  PickerView.swift
//  Componentes
//
//  Created by Valéria Cavalcanti.
//  https://developer.apple.com/documentation/swiftui/picker

import SwiftUI

struct PickerView: View {
    @State private var campus:Campus = .joao_pessoa
    
    var body: some View {
        VStack{
            Picker("Campus", selection: $campus) {
                Text("Cabedelo").tag(Campus.cabedelo)
                Text("Campina Grande").tag(Campus.campina_grande)
                Text("Cajazeiras").tag(Campus.cajazeiras)
                Text("João Pessoa").tag(Campus.joao_pessoa)
                Text("Sousa").tag(Campus.sousa)
            }
            .padding()
            
            Text(campus.rawValue)
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
