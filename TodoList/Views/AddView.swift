//
//  AddView.swift
//  TodoList
//
//  Created by User on 03.04.2026.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Environment(ListViewModel.self) private var listViewModel
    @State var textFieldText: String = ""
    
    @State var alertTitle: String = ""
    @State var showalert: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color("ColorAddView"))
                    .clipShape(.buttonBorder)
                
                Button {
                   saveButtonPressed()
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
        .alert(isPresented: $showalert, content: getAlert)
    }
    
    func saveButtonPressed() {
        if textIsAppropriate() {
            
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "You new todo item must be at least 3 characters long!😨"
            showalert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
    
}

#Preview {
    NavigationStack {
        AddView()
    }
    .environment(ListViewModel())
}
