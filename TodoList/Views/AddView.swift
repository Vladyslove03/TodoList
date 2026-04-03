//
//  AddView.swift
//  TodoList
//
//  Created by User on 03.04.2026.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color("ColorAddView"))
                    .clipShape(.buttonBorder)
                
                Button {
                    
                } label: {
                    Text("Save".uppercased())
                        .foregroundStyle(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .clipShape(.buttonBorder)
                }

            }
            .padding(14)
        }
        .navigationTitle("Add an item 🖊️")
    }
}

#Preview {
    NavigationStack {
        AddView()
    }
}
