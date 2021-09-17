//
//  LinkView.swift
//  Componentes
//
//  Created by Valéria Cavalcanti.
//  https://developer.apple.com/documentation/swiftui/link

import SwiftUI

struct LinkView: View {
    var body: some View {
        VStack{
            Link("IFPB", destination: URL(string: "http://www.ifpb.edu.br")!)
        }
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView()
    }
}
