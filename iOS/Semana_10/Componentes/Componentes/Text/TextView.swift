//
//  TextView.swift
//  Componentes
//
//  Created by Valéria Cavalcanti.
//  https://developer.apple.com/documentation/swiftui/textfield

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack {
            Group{
                Text("Texto 1")
                Text("Texto 2")
                    .font(.largeTitle)
                Text("Texto 3")
                    .font(.system(size: 60, weight: .bold, design: .monospaced))
                Text("Texto escrito com muitas linhas, muito texto, não cabe!")
                    .frame(width: 200)
                Text("Texto escrito com muitas linhas, muito texto, não cabe!")
                    .frame(width: 200)
                    .lineLimit(2)
            }.padding()
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
