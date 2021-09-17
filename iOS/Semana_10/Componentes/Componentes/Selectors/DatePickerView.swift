//
//  DatePickerView.swift
//  Componentes
//
//  Created by Valéria Cavalcanti.
//  https://developer.apple.com/documentation/swiftui/datepicker

import SwiftUI

struct DatePickerView: View {
    @State var dataHora: Date = Date()
    
    var body: some View {
        VStack{
            DatePicker("Escolha a data:", selection: $dataHora, displayedComponents: [.date, .hourAndMinute])
                .padding()
            
            Label(dataHora.description, image: "calendar")
        }
        
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
