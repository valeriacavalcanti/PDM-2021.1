//
//  ImageView.swift
//  Componentes
//
//  Created by Valéria Cavalcanti.
//  https://developer.apple.com/documentation/swiftui/image

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack{
            Image("vifpb")
                .resizable()
                .scaledToFit()
                .padding(60)
                .shadow(radius: 6)
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
