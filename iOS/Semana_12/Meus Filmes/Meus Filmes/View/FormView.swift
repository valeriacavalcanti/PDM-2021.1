//
//  FormView.swift
//  Meus Filmes
//
//  Created by Valéria Cavalcanti on 28/09/21.
//

import SwiftUI

struct FormView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var nome:String = ""
    @State private var nota:Int = 1
    @State private var genero:Genero = .acao
    let fvm: FilmeViewModel
    
    var body: some View {
        VStack{
            Spacer()
            top
            Spacer()
            nomeTF
            Spacer()
            notaSp
            Spacer()
            generoPk
        }
        .navigationTitle("Filme")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Salvar", action: salvar)
            }
        }
        .padding()
    }
    
    func salvar() {
        let id = self.fvm.lista.count + 1
        let filme = Filme(id: id, nome: self.nome, nota: self.nota, genero: self.genero)
        self.fvm.lista.append(filme)
        self.presentationMode.wrappedValue.dismiss()
    }
}

extension FormView{
    var top: some View{
        Image(systemName: "film")
            .resizable()
            .scaledToFit()
            .frame(width: 140)
            .foregroundColor(Color.orange)
    }
}

extension FormView{
    var nomeTF: some View{
        TextField("Nome do filme", text: self.$nome)
            .padding(10)
            .border(Color.gray)
    }
}

extension FormView{
    var notaSp: some View{
        Stepper("Nota: \(self.nota)", value: self.$nota, in: 1...10)
    }
}

extension FormView{
    var generoPk: some View{
        Picker("Gênero", selection: self.$genero) {
            ForEach (Genero.allCases){ genero in
                Text(genero.rawValue).tag(genero)
            }
        }
        .pickerStyle(.inline)
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView(fvm: FilmeViewModel())

    }
}
