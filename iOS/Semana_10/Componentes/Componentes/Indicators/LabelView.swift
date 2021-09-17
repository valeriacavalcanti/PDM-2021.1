//
//  LabelView.swift
//  Componentes
//
//  Created by Valéria Cavalcanti.
//  https://developer.apple.com/documentation/swiftui/label

import SwiftUI

struct LabelView: View {
    var body: some View {
        VStack{
            Label("Label 1", systemImage: "folder.badge.plus")
        }
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}
