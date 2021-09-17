//
//  ProgressViewView.swift
//  Componentes
//
//  Created by Valéria Cavalcanti.
//  https://developer.apple.com/documentation/swiftui/progressview

import SwiftUI

struct ProgressViewView: View {
    @State private var progress:Float = 0
    
    var body: some View {
        VStack{
            ProgressView()
                .padding()
            ProgressView("Barra de Progresso", value: progress)
                .padding()
            ProgressView(value: progress)
                .padding()
            HStack{
                Button("+"){
                    progress += 0.1
                }
                Button("-"){
                    progress -= 0.1
                }
            }
        }
    }
}

struct ProgressViewView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewView()
    }
}
