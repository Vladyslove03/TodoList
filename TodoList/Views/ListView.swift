//
//  ListView.swift
//  TodoList
//
//  Created by User on 03.04.2026.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This is the first title!",
        "This is the second!",
        "Third!"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .toolbar {
            ToolbarItem(
                placement: .topBarLeading) {
                EditButton()
            }
            ToolbarItem(
                placement: .topBarTrailing) {
                NavigationLink("Add") {
                    AddView()
                }
                
            }
        }
    }
}


#Preview {
    NavigationStack {
        ListView()
    }
}

